from flask import Flask, abort, redirect, render_template
from jinja2 import TemplateNotFound

DOCS_SIDENAV_ITEMS = [
    {"name": "quickstart", "href": "/docs/quickstart", "label": "Quickstart"},
    {"name": "themes", "href": "/docs/themes", "label": "Themes"},
    {"name": "icons", "href": "/docs/icons", "label": "Icons"},
    {"name": "faq", "href": "/docs/faq", "label": "FAQ"},
    {"name": "components", "href": "/docs/components", "label": "Components"},
]

THEMES_SIDENAV_ITEMS = DOCS_SIDENAV_ITEMS[:]
THEMES_SIDENAV_ITEMS[1] = {
    "name": "themes",
    "href": "/docs/themes",
    "label": "Themes",
    "children": [
        {
            "name": "overview",
            "href": "/docs/themes/",
            "label": "Overview",
        },
        {
            "name": "explorer",
            "href": "/docs/themes/explorer",
            "label": "Theme explorer",
        },
    ],
}


def create_server():
    server = Flask(__name__)

    @server.route("/")
    def index():
        try:
            return render_template("index.html")
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/")
    @server.route("/docs/quickstart/")
    def quickstart():
        try:
            return render_template(
                "generated/docs/quickstart.html",
                sidenav_items=DOCS_SIDENAV_ITEMS,
                sidenav_active="quickstart",
            )
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/themes/")
    def themes():
        try:
            return render_template(
                "generated/docs/themes.html",
                sidenav_items=THEMES_SIDENAV_ITEMS,
                sidenav_active="themes",
                active_child="overview",
            )
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/themes/explorer/")
    def theme_explorer():
        try:
            return render_template("theme-explorer.html")
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/icons/")
    def icons():
        try:
            return render_template(
                "generated/docs/icons.html",
                sidenav_items=DOCS_SIDENAV_ITEMS,
                sidenav_active="icons",
            )
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/faq/")
    def faq():
        try:
            return render_template(
                "generated/docs/faq.html",
                sidenav_items=DOCS_SIDENAV_ITEMS,
                sidenav_active="faq",
            )
        except TemplateNotFound:
            abort(404)

    @server.route("/l/components/", defaults={"slug": "main"})
    @server.route("/l/components/<slug>/")
    def components_redirect(slug):
        return redirect(f"/docs/components/{slug}", 302)

    @server.route("/examples/")
    def examples_index():
        try:
            return render_template("examples-index.html")
        except TemplateNotFound:
            abort(404)

    @server.route("/changelog/")
    def changelog():
        try:
            return render_template("generated/changelog.html")
        except TemplateNotFound:
            abort(404)

    @server.route("/migration-guide/")
    def migration_guide():
        try:
            return render_template("generated/migration-guide.html")
        except TemplateNotFound:
            abort(404)

    return server
