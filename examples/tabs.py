import dash
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

app = dash.Dash()

tab1_content = html.Div(html.H3("This is tab 1"), style={"margin": "10px"})

tab2_content = html.Div(
    dbc.Row(
        [
            dbc.Col(
                dbc.Card(
                    dbc.CardBody(
                        [
                            dbc.CardText("This tab has a card!"),
                            dbc.Button("Click here", color="success"),
                        ]
                    )
                )
            )
        ]
    ),
    style={"margin": "10px"},
)

app.layout = dbc.Container(
    [
        html.H1("Tabs example"),
        dbc.Tabs(
            [
                dbc.Tab(tab1_content, label="Tab 1"),
                dbc.Tab(tab2_content, label="Tab 2"),
            ],
            id="tabs",
        ),
        html.Div(id="active-tab")
    ]
)


@app.callback(Output("active-tab", "children"), [Input("tabs", "activeTab")])
def foo(at):
    return at


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
