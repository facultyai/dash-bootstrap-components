import dash_bootstrap_components as dbc
from dash import html

tabs = html.Div(
    [
        dbc.Tabs(
            [
                dbc.Tab(
                    label="tab 1",
                    active_tab_style={"textTransform": "uppercase"},
                ),
                dbc.Tab(label="tab 2", active_label_style={"color": "#FB79B3"}),
            ]
        ),
        html.Br(),
        dbc.Tabs(
            [
                dbc.Tab(label="Tab 1", activeTabClassName="fw-bold fst-italic"),
                dbc.Tab(label="Tab 2", activeLabelClassName="text-success"),
            ]
        ),
    ]
)
