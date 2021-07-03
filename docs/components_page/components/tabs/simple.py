import dash_bootstrap_components as dbc
import dash_html_components as html

tab1_content = dbc.Card(
    dbc.CardBody(
        [
            html.P("This is tab 1!", class_name="card-text"),
            dbc.Button("Click here", color="success"),
        ]
    ),
    class_name="mt-3",
)

tab2_content = dbc.Card(
    dbc.CardBody(
        [
            html.P("This is tab 2!", class_name="card-text"),
            dbc.Button("Don't click here", color="danger"),
        ]
    ),
    class_name="mt-3",
)


tabs = dbc.Tabs(
    [
        dbc.Tab(tab1_content, label="Tab 1"),
        dbc.Tab(tab2_content, label="Tab 2"),
        dbc.Tab(
            "This tab's content is never seen", label="Tab 3", disabled=True
        ),
    ]
)
