import dash_core_components as dcc
import dash_html_components as html
from werkzeug.middleware.dispatcher import DispatcherMiddleware


def class_name_shim(fn):
    def new_init(self, *args, **kwargs):
        kwargs["className"] = kwargs.get("class_name", kwargs.get("className"))
        return fn(
            self,
            *args,
            **{k: v for k, v in kwargs.items() if k != "class_name"}
        )

    return new_init


for component in [
    dcc.Markdown,
    html.A,
    html.Blockquote,
    html.Div,
    html.H1,
    html.H4,
    html.H5,
    html.H6,
    html.Hr,
    html.I,
    html.P,
    html.Small,
]:
    component.__init__ = class_name_shim(component.__init__)


from components_page import register_apps as register_component_apps  # noqa
from demos import register_apps as register_demo_apps  # noqa
from examples import register_apps as register_example_apps  # noqa
from markdown_to_html import convert_all_markdown_files  # noqa
from server import create_server  # noqa

convert_all_markdown_files()

server = create_server()
component_routes = register_component_apps()
example_routes = register_example_apps()
demo_routes = register_demo_apps()
routes = {**component_routes, **example_routes, **demo_routes}
application = DispatcherMiddleware(
    server, {slug: app.server for slug, app in routes.items()}
)

if __name__ == "__main__":
    import os

    from werkzeug.serving import run_simple

    os.environ["DBC_DOCS_MODE"] = "dev"
    run_simple("localhost", 8888, application, use_reloader=True)
