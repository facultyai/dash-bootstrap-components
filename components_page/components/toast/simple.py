import dash_bootstrap_components as dbc
from dash import html

toast = dbc.Toast(
    [html.P("This is the content of the toast", className="mb-0")],
    header="This is the header",
)
