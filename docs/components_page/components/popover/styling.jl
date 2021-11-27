using DashBootstrapComponents, DashHtmlComponents

popovers = html_div([
    dbc_button("Hidden Arrow", id = "hide-arrow-target", className = "me-1", n_clicks = 0),
    dbc_popover(
        "I am a popover without an arrow!",
        target = "hide-arrow-target",
        trigger = "legacy",
        hide_arrow = true,
    ),
    dbc_button("Offset Popover", id = "offset-target", n_clicks = 0),
    dbc_popover(
        "I am a popover that's been offset!",
        target = "offset-target",
        trigger = "legacy",
        hide_arrow = true,
        offset = "50,20",
    ),
])
