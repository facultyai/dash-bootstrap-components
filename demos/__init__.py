import os
from pathlib import Path

import dash
from jinja2 import Environment, FileSystemLoader

from .theme_explorer import app as theme_explorer

SERVE_LOCALLY = os.getenv("DBC_DOCS_MODE", "production") == "dev"

HERE = Path(__file__).parent
TEMPLATES = HERE.parent / "templates"

INDEX_STRING_TEMPLATE = """{% extends "theme-explorer.html" %}
{% block head %}
{{ super() }}
{{ "{%metas%}{%css%}" }}
{% endblock %}
{% block title %}
<title>{{ "{%title%}" }}</title>
{% endblock %}
{% block content %}
{{ "{%app_entry%}" }}
{% endblock %}
{% block code %}<CODE>{% endblock %}
{% block scripts %}
<footer>
  {{ "{%config%}{%scripts%}{%renderer%}" }}
  {{ super() }}
</footer>
{% endblock %}
"""


def register_apps():
    env = Environment(loader=FileSystemLoader(TEMPLATES.as_posix()))
    template = env.from_string(INDEX_STRING_TEMPLATE)
    template = template.render()

    code = (HERE / "theme_explorer.py").read_text()

    new_theme_explorer = dash.Dash(
        external_stylesheets=["/static/loading.css"],
        requests_pathname_prefix="/docs/themes/explorer/",
        suppress_callback_exceptions=True,
        serve_locally=SERVE_LOCALLY,
        index_string=template.replace("<CODE>", code),
        update_title=None,
    )

    new_theme_explorer.title = "Theme explorer - dbc docs"
    new_theme_explorer.layout = theme_explorer.layout
    new_theme_explorer.callback_map = theme_explorer.callback_map
    new_theme_explorer._callback_list = new_theme_explorer._callback_list
    return {"/docs/themes/explorer": new_theme_explorer}
