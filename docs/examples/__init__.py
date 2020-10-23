import os
import re
from pathlib import Path

import dash
import dash_bootstrap_components as dbc
from jinja2 import Environment, FileSystemLoader

from .vendor.graphs_in_tabs import app as git_app
from .vendor.iris import app as iris_app

SERVE_LOCALLY = os.getenv("DBC_DOCS_MODE", "production") == "dev"

HREF_PATTERN = re.compile(r'href="')

HERE = Path(__file__).parent
EXAMPLES = HERE / "vendor"
TEMPLATES = HERE.parent / "templates"

GITHUB_EXAMPLES = (
    "https://github.com/"
    "facultyai/dash-bootstrap-components/blob/master/examples/"
)

INDEX_STRING_TEMPLATE = """{% extends "example.html" %}
{% block head %}
{{ super() }}
{{ "{%metas%}{%css%}" }}
{% endblock %}
{% block title %}
<title>{{ "{%title%}" }}</title>
{% endblock %}
<WARNING>
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

SIZE_WARNING = """{% block size_warning %}
<div class="d-sm-none">
    <div class="alert alert-warning">
        Warning: This example app has not been optimized for small screens,
        results may vary...
    </div>
</div>
{% endblock %}
"""


def mod_callback(fn):
    def wrapper(path, **kwargs):
        path = path.replace("/examples/simple-sidebar", "")
        return fn(path, **kwargs)

    return wrapper


def build_app_from_example(app, name, code, code_link, show_warning=False):
    if show_warning:
        template = INDEX_STRING_TEMPLATE.replace("<WARNING>", SIZE_WARNING)
    else:
        template = INDEX_STRING_TEMPLATE.replace("<WARNING>", "")

    env = Environment(loader=FileSystemLoader(TEMPLATES.as_posix()))
    template = env.from_string(template)
    template = template.render(example_link=code_link)

    new_app = dash.Dash(
        external_stylesheets=["/static/loading.css", dbc.themes.BOOTSTRAP],
        requests_pathname_prefix=f"/examples/{name}/",
        serve_locally=SERVE_LOCALLY,
        index_string=template.replace("<CODE>", code),
        update_title=None,
    )
    new_app.title = f"{name.capitalize().replace('-', ' ')} - dbc examples"
    new_app.layout = app.layout
    new_app.callback_map = app.callback_map
    new_app._callback_list = app._callback_list
    return new_app


def register_apps():

    iris_app_ = build_app_from_example(
        iris_app,
        "iris",
        (EXAMPLES / "iris.py").read_text(),
        os.path.join(GITHUB_EXAMPLES, "gallery/iris-kmeans/app.py"),
    )
    git_app_ = build_app_from_example(
        git_app,
        "graphs-in-tabs",
        (EXAMPLES / "graphs_in_tabs.py").read_text(),
        os.path.join(
            GITHUB_EXAMPLES, "advanced-component-usage/graphs_in_tabs.py"
        ),
    )

    # need to do a bit of hackery to make sure the links of the multi page app
    # work correctly when the app is exposed at a particular route
    sidebar_source = (EXAMPLES / "simple_sidebar.py").read_text()
    env = {}
    exec(
        HREF_PATTERN.sub('href="/examples/simple-sidebar', sidebar_source), env
    )
    sidebar_app = env["app"]

    sidebar_app = build_app_from_example(
        sidebar_app,
        "simple-sidebar",
        sidebar_source,
        os.path.join(GITHUB_EXAMPLES, "multi-page-apps/simple_sidebar.py"),
        show_warning=True,
    )

    # shim navigation callbacks
    keys = [
        "..page-1-link.active...page-2-link.active...page-3-link.active..",
        "page-content.children",
    ]
    for key in keys:
        sidebar_app.callback_map[key]["callback"] = mod_callback(
            sidebar_app.callback_map[key]["callback"]
        )

    return {
        "/examples/graphs-in-tabs": git_app_,
        "/examples/iris": iris_app_,
        "/examples/simple-sidebar": sidebar_app,
    }
