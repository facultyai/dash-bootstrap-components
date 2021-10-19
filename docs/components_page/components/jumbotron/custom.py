import dash_bootstrap_components as dbc
from dash import html

left_jumbotron = dbc.Col(
    html.Div(
        [
            html.H2("Change the background", className="display-3"),
            html.Hr(className="my-2"),
            html.P(
                "Swap the background-color utility and add a `.text-*` color "
                "utility to mix up the look."
            ),
            dbc.Button("Example Button", color="light", outline=True),
        ],
        className="h-100 p-5 text-white bg-dark rounded-3",
    ),
    md=6,
)

right_jumbotron = dbc.Col(
    html.Div(
        [
            html.H2("Add borders", className="display-3"),
            html.Hr(className="my-2"),
            html.P(
                "Or, keep it light and add a border for some added definition "
                "to the boundaries of your content."
            ),
            dbc.Button("Example Button", color="secondary", outline=True),
        ],
        className="h-100 p-5 bg-light border rounded-3",
    ),
    md=6,
)

jumbotron = dbc.Row(
    [left_jumbotron, right_jumbotron],
    className="align-items-md-stretch",
)
