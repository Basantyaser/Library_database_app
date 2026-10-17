import json
import time
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import urlencode
from urllib.request import Request, urlopen


GOOGLE_BOOKS_URL = "https://www.googleapis.com/books/v1/volumes"
OPEN_LIBRARY_URL = "https://openlibrary.org/search.json"
OUTPUT_FILE = Path(__file__).with_name("bookrecords.json")
PAGE_SIZE = 40
TOTAL_BOOKS = 200
RETRYABLE_STATUS_CODES = {429, 500, 502, 503, 504}


def get_json(url, params, retries=4):
    request_url = f"{url}?{urlencode(params)}"
    for attempt in range(retries + 1):
        request = Request(request_url, headers={"User-Agent": "LibraryDatabaseApp/1.0"})
        try:
            with urlopen(request, timeout=30) as response:
                return json.load(response)
        except HTTPError as error:
            try:
                details = json.loads(error.read().decode("utf-8"))
                message = details.get("error", {}).get("message", error.reason)
            except (UnicodeDecodeError, json.JSONDecodeError, AttributeError):
                message = error.reason
            if error.code not in RETRYABLE_STATUS_CODES or attempt == retries:
                raise RuntimeError(f"HTTP {error.code}: {message}") from error
            if error.code == 429 and "quota" in message.lower():
                raise RuntimeError(f"daily quota exceeded: {message}") from error
            retry_after = error.headers.get("Retry-After", "")
            delay = min(float(retry_after), 60) if retry_after.isdigit() else 2**attempt
            time.sleep(delay)
        except URLError:
            if attempt == retries:
                raise
            time.sleep(2**attempt)


def fetch_google_books():
    books = []
    for start_index in range(0, TOTAL_BOOKS, PAGE_SIZE):
        data = get_json(
            GOOGLE_BOOKS_URL,
            {"q": "subject:computers", "maxResults": PAGE_SIZE, "startIndex": start_index},
        )
        items = data.get("items", [])
        books.extend(items)
        if len(items) < PAGE_SIZE:
            break
    return books


def fetch_open_library():
    books = []
    # Search extra pages because some catalog entries have no subject metadata.
    page_count = (TOTAL_BOOKS + PAGE_SIZE - 1) // PAGE_SIZE * 5
    for page in range(1, page_count + 1):
        data = get_json(
            OPEN_LIBRARY_URL,
            {
                "subject": "computers",
                "fields": "key,title,author_name,subject,subject_facet",
                "limit": PAGE_SIZE,
                "page": page,
            },
        )
        docs = data.get("docs", [])
        for item in docs:
            key = item.get("key", "")
            books.append(
                {
                    "id": key.rsplit("/", 1)[-1],
                    "volumeInfo": {
                        "title": item.get("title", "Untitled"),
                        "authors": item.get("author_name", []),
                        "categories": item.get("subject") or item.get("subject_facet", []),
                        "publishedDate": str(item["first_publish_year"])
                        if item.get("first_publish_year")
                        else "",
                        "description": item.get("first_sentence", ""),
                        "industryIdentifiers": [
                            {"type": "ISBN", "identifier": isbn}
                            for isbn in item.get("isbn", [])[:3]
                        ],
                    },
                }
            )
        if len(docs) < PAGE_SIZE:
            break
    return books


def main():
    try:
        try:
            books = fetch_google_books()
            source = "Google Books"
        except RuntimeError as error:
            if "daily quota exceeded" not in str(error).lower():
                raise
            print(f"{error}\nUsing Open Library as a fallback.")
            books = fetch_open_library()
            source = "Open Library (Google Books quota fallback)"
    except (RuntimeError, URLError, TimeoutError) as error:
        raise SystemExit(f"Could not fetch books: {error}") from error

    records = []
    for book in books:
        info = book.get("volumeInfo", {})
        categories = info.get("categories") or []
        if not categories:
            continue
        records.append(
            {
                "id": book.get("id", ""),
                "title": info.get("title", "Untitled"),
                "category": categories[0],
                "authorname": ", ".join(info.get("authors", [])),
            }
        )
        if len(records) == TOTAL_BOOKS:
            break

    OUTPUT_FILE.write_text(
        json.dumps(records, ensure_ascii=False, indent=4), encoding="utf-8"
    )
    print(f"Saved {len(records)} books from {source} to {OUTPUT_FILE}")


if __name__ == "__main__":
    main()
