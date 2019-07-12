import dash_bootstrap_components as dbc
import dash_html_components as html

toast = dbc.Toast(
    [html.P("This is the content of the toast", className="mb-0")],
    header="This is the header",
)
