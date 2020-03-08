from werkzeug.middleware.dispatcher import DispatcherMiddleware

from components_page import register_apps
from markdown_to_html import convert_all_markdown_files
from server import create_server

convert_all_markdown_files()

server = create_server()
routes = register_apps()
application = DispatcherMiddleware(
    server, {slug: app.server for slug, app in routes.items()}
)

if __name__ == "__main__":
    from werkzeug.serving import run_simple

    run_simple("localhost", 8888, application, use_reloader=True)
