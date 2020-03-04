from pathlib import Path

import dash
import dash_bootstrap_components as dbc
import dash_html_components as html

from .components.table.simple import table_body, table_header
from .components.tabs.simple import tab1_content, tab2_content
from .markdown_parser import parse

HERE = Path(__file__).parent
COMPONENTS = HERE / "components"

LOREM = (COMPONENTS / "modal" / "lorem.txt").read_text()

HIGHLIGHT_JS_CSS = (
    "https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@9.13.1/"
    "build/styles/monokai-sublime.min.css"
)


def register():
    component_bodies = {
        "alert": {"markdown_path": COMPONENTS / "alert.md"},
        "badge": {"markdown_path": COMPONENTS / "badge.md"},
        "button": {"markdown_path": COMPONENTS / "button.md"},
        "button_group": {"markdown_path": COMPONENTS / "button_group.md"},
        "card": {"markdown_path": COMPONENTS / "card.md"},
        "collapse": {"markdown_path": COMPONENTS / "collapse.md"},
        "dropdown_menu": {"markdown_path": COMPONENTS / "dropdown.md"},
        "fade": {"markdown_path": COMPONENTS / "fade.md"},
        "form": {"markdown_path": COMPONENTS / "form.md"},
        "input": {"markdown_path": COMPONENTS / "input.md"},
        "input_group": {"markdown_path": COMPONENTS / "input_group.md"},
        "jumbotron": {"markdown_path": COMPONENTS / "jumbotron.md"},
        "layout": {"markdown_path": COMPONENTS / "layout.md"},
        "list_group": {"markdown_path": COMPONENTS / "list_group.md"},
        "modal": {
            "markdown_path": COMPONENTS / "modal.md",
            "extra_env_vars": {"LOREM": LOREM},
        },
        "nav": {"markdown_path": COMPONENTS / "nav.md"},
        "navbar": {"markdown_path": COMPONENTS / "navbar.md"},
        "popover": {"markdown_path": COMPONENTS / "popover.md"},
        "progress": {"markdown_path": COMPONENTS / "progress.md"},
        "spinner": {"markdown_path": COMPONENTS / "spinner.md"},
        "table": {
            "markdown_path": COMPONENTS / "table.md",
            "extra_env_vars": {
                "dbc": dbc,
                "table_header": table_header,
                "table_body": table_body,
            },
        },
        "tabs": {
            "markdown_path": COMPONENTS / "tabs.md",
            "extra_env_vars": {
                "tab1_content": tab1_content,
                "tab2_content": tab2_content,
            },
        },
        "toast": {"markdown_path": COMPONENTS / "toast.md"},
        "tooltip": {"markdown_path": COMPONENTS / "tooltip.md"},
    }

    routes = {}
    for slug, kwargs in component_bodies.items():
        app = dash.Dash(
            external_stylesheets=[
                dbc.themes.BOOTSTRAP,
                HIGHLIGHT_JS_CSS,
                "/static/loading.css",
                "/static/docs.css",
            ],
            requests_pathname_prefix=f"/dash/components/{slug}/",
            suppress_callback_exceptions=True,
            serve_locally=False,
        )
        app.title = f"dbc - {slug.capitalize()}"

        if slug == "layout":
            app.layout = html.Div(
                parse(app, **kwargs), className="layout-demo"
            )
        else:
            app.layout = parse(app, **kwargs)
        routes[f"/dash/components/{slug}"] = app

    return routes
