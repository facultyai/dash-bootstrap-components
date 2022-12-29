import dash_bootstrap_components as dbc
from dash import html

tabs = html.Div(
    [
        dbc.Tabs(
            [
                dbc.Tab(label="Tab 1", tab_style={"marginLeft": "auto"}),
                dbc.Tab(label="Tab 2", label_style={"color": "#00AEF9"}),
            ]
        ),
        html.Br(),
        dbc.Tabs(
            [
                dbc.Tab(label="Tab 1", tabClassName="ms-auto"),
                dbc.Tab(label="Tab 2", labelClassName="text-success"),
            ]
        ),
    ]
)
