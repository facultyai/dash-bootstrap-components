using DashBootstrapComponents

modal = html_div([
    dbc_button("Small modal", id = "open-sm", className = "me-1", n_clicks = 0),
    dbc_button("Large modal", id = "open-lg", className = "me-1", n_clicks = 0),
    dbc_button("Extra large modal", id = "open-xl", n_clicks = 0),
    dbc_modal(
        [dbc_modalheader(dbc_modaltitle("Header")), dbc_modalbody("A small modal.")],
        id = "modal-sm",
        size = "sm",
        is_open = false,
    ),
    dbc_modal(
        [dbc_modalheader(dbc_modaltitle("Header")), dbc_modalbody("A large modal.")],
        id = "modal-lg",
        size = "lg",
        is_open = false,
    ),
    dbc_modal(
        [dbc_modalheader(dbc_modaltitle("Header")), dbc_modalbody("An extra large modal.")],
        id = "modal-xl",
        size = "xl",
        is_open = false,
    ),
]);


function toggle_modal(n1, is_open)
    return n1 > 0 ? is_open == 0 : is_open
end;


callback!(
    app,
    Output("modal-sm", "is_open"),
    Input("open-sm", "n_clicks"),
    State("modal-sm", "is_open"),
) do n1, is_open
    return toggle_modal(n1, is_open)
end;

callback!(
    app,
    Output("modal-lg", "is_open"),
    Input("open-lg", "n_clicks"),
    State("modal-lg", "is_open"),
) do n1, is_open
    return toggle_modal(n1, is_open)
end;

callback!(
    app,
    Output("modal-xl", "is_open"),
    Input("open-xl", "n_clicks"),
    State("modal-xl", "is_open"),
) do n1, is_open
    return toggle_modal(n1, is_open)
end;
