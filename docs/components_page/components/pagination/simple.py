import dash
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

NUMBER_BUTTONS = 5


def make_item(i):
    # we use this function to make the example items to avoid code duplication
    return dbc.PaginationItem(id=f"pagination-simple-{i}", item_title=f"{i}")


pagination = html.Div(
    [
        html.Div("Choose a page", id="pagination-simple-content"),
        dbc.Pagination([make_item(i + 1) for i in range(NUMBER_BUTTONS)]),
    ]
)


@app.callback(
    [Output("pagination-simple-content", "children")]
    + [
        Output(f"pagination-simple-{i+1}", "active")
        for i in range(NUMBER_BUTTONS)
    ],
    [
        Input(f"pagination-simple-{i+1}", "n_clicks")
        for i in range(NUMBER_BUTTONS)
    ],
    [
        State(f"pagination-simple-{i+1}", "active")
        for i in range(NUMBER_BUTTONS)
    ],
)
def toggle_pages(*args):
    ctx = dash.callback_context

    if not ctx.triggered:
        return "Choose a page", *(False for _ in range(NUMBER_BUTTONS))
    else:
        button_id = ctx.triggered[0]["prop_id"].split(".")[0]
        # button_id = "pagination-simple-1" here need to get the number
        button_id = button_id.split("-")[-1]

    n = args[:NUMBER_BUTTONS]
    active = args[NUMBER_BUTTONS:]

    for i in range(NUMBER_BUTTONS):
        if button_id == f"{i + 1}" and n[i]:
            return f"Page {button_id} selected", *(
                (not active[x]) if x == i else False
                for x in range(NUMBER_BUTTONS)
            )

    return "Unknown page", *(False for _ in range(NUMBER_BUTTONS))
