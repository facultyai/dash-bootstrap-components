import dash_bootstrap_components as dbc
import dash_html_components as html


def make_button(placement):
    return dbc.Button(
        f"Tooltip on {placement}",
        id=f"tooltip-target-{placement}",
        className="mx-2",
    )


def make_tooltip(placement):
    return dbc.Tooltip(
        f"Tooltip on {placement}",
        target=f"tooltip-target-{placement}",
        placement=placement,
    )


tooltips = html.Div(
    [make_button(p) for p in ["top", "left", "right", "bottom"]]
    + [make_tooltip(p) for p in ["top", "left", "right", "bottom"]]
)
