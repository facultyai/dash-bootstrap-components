import dash_bootstrap_components as dbc
from dash import Input, Output, dcc, html

pagination = html.Div(
    [
        html.Div("Select a page", id="pagination-contents"),
        dbc.Pagination(id="pagination", max_value=10),
        html.Div("Or set the page dynamically using the slider below"),
        dcc.Slider(
            id="page-change",
            min=1,
            max=10,
            step=1,
            value=1,
            marks={i: str(i) for i in range(1, 11)},
        ),
    ]
)


@app.callback(
    Output("pagination-contents", "children"),
    [Input("pagination", "active_page")],
)
def change_page(page):
    if page:
        return f"Page selected: {page}"
    return "Select a page"


@app.callback(
    Output("pagination", "active_page"), [Input("page-change", "value")]
)
def change_active_page(value):
    return value
