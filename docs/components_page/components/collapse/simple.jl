using DashBootstrapComponents

collapse = html_div([
    dbc_button(
        "Open collapse",
        id = "collapse-button",
        className = "mb-3",
        color = "primary",
        n_clicks = 0,
    ),
    dbc_collapse(
        dbc_card(dbc_cardbody("This content is hidden in the collapse")),
        id = "collapse",
        is_open = false,
    ),
]);

callback!(
    app,
    Output("collapse", "is_open"),
    Input("collapse-button", "n_clicks"),
    State("collapse", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open
end;
