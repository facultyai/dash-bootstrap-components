import dash
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State


def make_item(i):
    # we use this function to make the example items to avoid code duplication
    return dbc.Card(
        [
            dbc.CardHeader(
                html.H2(
                    dbc.Button(
                        f"Collapsible group #{i}",
                        color="link",
                        id=f"group-{i}-toggle",
                    )
                )
            ),
            dbc.Collapse(
                dbc.CardBody(f"This is the content of group {i}..."),
                id=f"collapse-{i}",
            ),
        ]
    )


accordion = html.Div(
    [make_item(1), make_item(2), make_item(3)], className="accordion"
)


@app.callback(
    [Output(f"collapse-{i}", "is_open") for i in range(1, 4)],
    [Input(f"group-{i}-toggle", "n_clicks") for i in range(1, 4)],
    [State(f"collapse-{i}", "is_open") for i in range(1, 4)],
)
def toggle_accordion(n1, n2, n3, is_open1, is_open2, is_open3):
    ctx = dash.callback_context

    if not ctx.triggered:
        return ""
    else:
        button_id = ctx.triggered[0]["prop_id"].split(".")[0]

    if button_id == "group-1-toggle" and n1:
        return not is_open1, False, False
    elif button_id == "group-2-toggle" and n2:
        return False, not is_open2, False
    elif button_id == "group-3-toggle" and n3:
        return False, False, not is_open3
    return False, False, False
