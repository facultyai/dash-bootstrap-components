import dash_bootstrap_components as dbc
import dash_html_components as html

from .util import make_subheading

toast = html.Div(
    [
        make_subheading("Toast", "toast"),
        dbc.Button(
            "Open toast",
            id="auto-toast-toggle",
            color="primary",
            class_name="mb-3",
        ),
        dbc.Toast(
            html.P("This is the content of the toast", class_name="mb-0"),
            id="auto-toast",
            header="This is the header",
            icon="primary",
            duration=4000,
        ),
    ],
    class_name="mb-2",
)
