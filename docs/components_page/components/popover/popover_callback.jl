using DashBootstrapComponents, DashHtmlComponents

popover = html_div([
    dbc_button(
        "Toggle",
        id = "toggle",
        color = "success",
        className = "me-4",
        n_clicks = 0,
    ),
    dbc_button("Target", id = "target", color = "danger", n_clicks = 0),
    dbc_popover(
        [
            dbc_popoverheader("Popover header"),
            dbc_popoverbody("And here's some amazing content. Cool!"),
        ],
        id = "popover",
        is_open = false,
        target = "target",
    ),
]);

callback!(
    app,
    Output("popover", "is_open"),
    Input("toggle", "n_clicks"),
    State("popover", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open == 1
end;
