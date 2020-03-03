from flask import Flask, render_template
from werkzeug.middleware.dispatcher import DispatcherMiddleware

from components_page.register_apps import register

server = Flask(__name__, static_folder="assets")


@server.route("/")
def index():
    return render_template("index.html")


routes = register()
application = DispatcherMiddleware(
    server, {slug: app.server for slug, app in routes.items()}
)


if __name__ == "__main__":
    from werkzeug.serving import run_simple

    run_simple("localhost", 8888, application, use_reloader=True)
