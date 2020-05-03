from flask import Flask, abort, redirect, render_template
from jinja2 import TemplateNotFound

DOCS_SIDENAV_ITEMS = [
    {"name": "quickstart", "href": "/docs/quickstart", "label": "Quickstart"},
    {"name": "themes", "href": "/docs/themes", "label": "Themes"},
    {"name": "dashr", "href": "/docs/dashr", "label": "Dash for R"},
    {"name": "components", "href": "/docs/components", "label": "Components"},
]


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
                sidenav_items=DOCS_SIDENAV_ITEMS,
                sidenav_active="themes",
            )
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/dashr/")
    def dashr():
        try:
            return render_template(
                "generated/docs/dashR.html",
                sidenav_items=DOCS_SIDENAV_ITEMS,
                sidenav_active="dashr",
            )
        except TemplateNotFound:
            abort(404)

    @server.route("/docs/components/")
    def components_index():
        return redirect("/docs/components/alert", 302)

    @server.route("/l/components/", defaults={"slug": "alert"})
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

    return server
