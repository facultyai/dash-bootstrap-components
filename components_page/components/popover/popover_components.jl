using DashBootstrapComponents, DashHtmlComponents

popovers = html_div([
    dbc_button("Click Me", id = "component-target", n_clicks = 0),
    dbc_popover(
        [
            dbc_popoverheader("Popover header"),
            dbc_popoverbody("And here's some amazing content. Cool!"),
        ],
        target = "component-target",
        trigger = "click",
    ),
]);
