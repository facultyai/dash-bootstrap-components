using DashBootstrapComponents

modal = html_div([
    dbc_button("Open modal", id = "open", n_clicks = 0),
    dbc_modal(
        [
            dbc_modalheader(dbc_modaltitle("Header")),
            dbc_modalbody("This is the content of the modal"),
            dbc_modalfooter(
                dbc_button("Close", id = "close", className = "ms-auto", n_clicks = 0),
            ),
        ],
        id = "modal",
        is_open = false,
    ),
]);

callback!(
    app,
    Output("modal", "is_open"),
    Input("open", "n_clicks"),
    Input("close", "n_clicks"),
    State("modal", "is_open"),
) do n1, n2, is_open
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;
