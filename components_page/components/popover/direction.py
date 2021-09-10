import dash_bootstrap_components as dbc
from dash import Input, Output, State, html


def make_popover(placement):
    return dbc.Popover(
        [
            dbc.PopoverHeader("Header"),
            dbc.PopoverBody(f"This is a {placement} popover"),
        ],
        id=f"popover-{placement}",
        target=f"popover-{placement}-target",
        placement=placement,
        is_open=False,
    )


def make_button(placement):
    return dbc.Button(
        f"Popover on {placement}",
        id=f"popover-{placement}-target",
        className="mx-2",
        n_clicks=0,
    )


popovers = html.Div(
    [make_button(p) for p in ["top", "left", "right", "bottom"]]
    + [make_popover(p) for p in ["top", "left", "right", "bottom"]]
)


def toggle_popover(n, is_open):
    if n:
        return not is_open
    return is_open


for p in ["top", "left", "right", "bottom"]:
    app.callback(
        Output(f"popover-{p}", "is_open"),
        [Input(f"popover-{p}-target", "n_clicks")],
        [State(f"popover-{p}", "is_open")],
    )(toggle_popover)
