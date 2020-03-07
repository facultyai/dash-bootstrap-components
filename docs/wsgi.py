from flask import Blueprint, Flask, abort, render_template
from jinja2 import TemplateNotFound
from werkzeug.middleware.dispatcher import DispatcherMiddleware

from components_page.register_apps import register

server = Flask(__name__)
docs = Blueprint("docs", __name__)


@server.route("/")
def index():
    return render_template("test.html")


@docs.route("/docs/", defaults={"page": "index"})
@docs.route("/docs/<page>")
def show(page):
    try:
        return render_template(f"docs/{page}.html")
    except TemplateNotFound:
        abort(404)


server.register_blueprint(docs)

routes = register()
application = DispatcherMiddleware(
    server, {slug: app.server for slug, app in routes.items()}
)


if __name__ == "__main__":
    from werkzeug.serving import run_simple

    run_simple("localhost", 8888, application, use_reloader=True)
