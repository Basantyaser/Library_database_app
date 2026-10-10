# theme.py

class Theme:
    # =========================
    # COLORS
    # =========================
    COLORS = {
        # Base
        "bg": "#1e1e1e",
        "fg": "white",
        "text_dark": "#000000",
        "text_white":"white",
        

        # Primary
        "primary": "#307DD4",
        "primary_hover": "#0557B5",
        

        # Secondary
        "secondary": "#2b2b2b",
        "secondary_hover": "#3a3a3a",

        # States
        "success": "#4caf50",
        "warning": "#ff9800",
        "error": "#f44336",
        "disabled": "#555555",

        # Borders
        "border": "#444444",
        "focus": "#3a7ebf",
    }

    # =========================
    # FONTS
    # =========================
    FONTS = {
        "normal": ("Segoe UI", 14, "bold"),
        "small": ("Segoe UI", 10),
        "bold": ("Segoe UI", 18, "bold"),
        "title": ("Segoe UI", 20, "bold"),
        "mono": ("Consolas", 11),
        
    }

    # =========================
    # SPACING
    # =========================
    SPACING = {
        "padding": 10,
        "small": 5,
        "large": 20,
    }


# =========================
# APPLY FUNCTION
# =========================
def apply_style(widget, **styles):
    """
    Universal style applier for Tkinter & CTk
    """
    widget.configure(**styles)


# =========================
# BUTTON STYLE
# =========================
def button_primary(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["primary"],
        hover_color=Theme.COLORS["primary_hover"],
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["bold"],
        corner_radius=6,
    )


def button_secondary(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["secondary"],
        hover_color=Theme.COLORS["secondary_hover"],
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["normal"],
        corner_radius=6,
    )


def button_danger(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["error"],
        hover_color="#d32f2f",
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["bold"],
        corner_radius=6,
    )


# =========================
# LABEL STYLE
# =========================
def label_default(widget):
    apply_style(
        widget,
        text_color=Theme.COLORS["primary"],
        font=Theme.FONTS["bold"],
    )


def label_title(widget):
    apply_style(
        widget,
        text_color=Theme.COLORS["primary"],
        font=Theme.FONTS["title"],
    )
def label_black(widget):
    apply_style(
        widget,
        text_color="grey",
        font=Theme.FONTS["normal"],
    )


def label_error(widget):
    apply_style(
        widget,
        text_color=Theme.COLORS["error"],
        font=Theme.FONTS["normal"],
    )


def label_small(widget):
    apply_style(
        widget,
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["small"],
    )


# =========================
# ENTRY STYLE
# =========================
def entry_default(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["text_white"],
        text_color=Theme.COLORS["text_dark"],
        border_color=Theme.COLORS["text_white"],
        border_width=1,
        corner_radius=5,
        font=Theme.FONTS["normal"],
    )


def entry_focused(widget):
    apply_style(
        widget,
        border_color=Theme.COLORS["focus"],
    )


# =========================
# FRAME STYLE
# =========================
def frame_default(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["secondary"],
        corner_radius=8,
    )


def frame_main(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["bg"],
    )


# =========================
# CHECKBOX / RADIO
# =========================
def checkbox_style(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["primary"],
        hover_color=Theme.COLORS["primary_hover"],
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["normal"],
    )


def radio_style(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["primary"],
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["normal"],
    )


# =========================
# SLIDER
# =========================
def slider_style(widget):
    apply_style(
        widget,
        progress_color=Theme.COLORS["primary"],
        button_color=Theme.COLORS["primary"],
        button_hover_color=Theme.COLORS["primary_hover"],
    )


# =========================
# TEXTBOX
# =========================
def textbox_style(widget):
    apply_style(
        widget,
        fg_color=Theme.COLORS["secondary"],
        text_color=Theme.COLORS["fg"],
        font=Theme.FONTS["mono"],
        border_color=Theme.COLORS["border"],
        border_width=1,
    )