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
                dbc.Tab(label="Tab 1", tab_class_name="ms-auto"),
                dbc.Tab(label="Tab 2", label_class_name="text-success"),
            ]
        ),
    ]
)
