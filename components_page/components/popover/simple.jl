using DashBootstrapComponents, DashHtmlComponents

popovers = html_div([
    # First example - using dbc_popoverbody
    dbc_button("popover-target", id = "popover-target", className = "me-1"),
    dbc_popover(
        dbc_popoverbody("My `target` is `popover-target`."),
        target = "popover-target",
        trigger = "click",
    ),
    # Second example - using body=true
    dbc_button("popover-alt-target", id = "popover-alt-target", className = "me-1"),
    dbc_popover(
        "My `target` is `popover-alt-target`.",
        body = true,
        target = "popover-alt-target",
        trigger = "click",
    ),
])
