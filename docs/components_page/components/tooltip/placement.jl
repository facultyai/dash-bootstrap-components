using DashBootstrapComponents, DashHtmlComponents


function make_button(placement)
    return dbc_button(
        "Tooltip on $placement",
        id = "tooltip-target-$placement",
        className = "mx-2",
        n_clicks = 0,
    )
end;

function make_tooltip(placement)
    return dbc_tooltip(
        "Tooltip on $placement",
        target = "tooltip-target-$placement",
        placement = placement,
    )
end;

tooltips = html_div(
    [
        [make_button(p) for p in ["top", "left", "right", "bottom"]]
        [make_tooltip(p) for p in ["top", "left", "right", "bottom"]]
    ],
);
