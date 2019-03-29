import dash_bootstrap_components as dbc
import dash_html_components as html

tabs = html.Div(
    [
        dbc.Tabs(
            [
                dbc.Tab(label="Tab 1", tab_style={"margin-left": "auto"}),
                dbc.Tab(label="Tab 2", label_style={"color": "#00AEF9"}),
            ]
        ),
        html.Br(),
        dbc.Tabs(
            [
                dbc.Tab(label="Tab 1", tabClassName="ml-auto"),
                dbc.Tab(label="Tab 2", labelClassName="text-success"),
            ]
        ),
    ]
)
