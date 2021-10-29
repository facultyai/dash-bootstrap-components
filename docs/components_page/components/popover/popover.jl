using DashBootstrapComponents, DashHtmlComponents

popover_children = "I am a popover!";

popovers = html_div([
    dbc_button(
        "Click",
        id = "click-target",
        color = "danger",
        className = "me-1",
        n_clicks = 0,
    ),
    dbc_popover(popover_children, target = "click-target", trigger = "click"),
    dbc_button(
        "Focus",
        id = "focus-target",
        color = "danger",
        className = "me-1",
        n_clicks = 0,
    ),
    dbc_popover(popover_children, target = "focus-target", trigger = "focus"),
    dbc_button(
        "Hover",
        id = "hover-target",
        color = "danger",
        className = "me-1",
        n_clicks = 0,
    ),
    dbc_popover(popover_children, target = "hover-target", trigger = "hover"),
    dbc_button("Legacy", id = "legacy-target", color = "danger", n_clicks = 0),
    dbc_popover(popover_children, target = "legacy-target", trigger = "legacy"),
]);
