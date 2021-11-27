using DashBootstrapComponents

modal = html_div([
    dbc_button("Open modal", id = "open-dismiss"),
    dbc_modal(
        [
            dbc_modalheader(dbc_modaltitle("Dismissing"), close_button = false),
            dbc_modalbody(
                "This modal has no close button and can't be dismissed by " *
                "pressing ESC. Try clicking on the backdrop or the below " *
                "close button.",
            ),
            dbc_modalfooter(dbc_button("Close", id = "close-dismiss")),
        ],
        id = "modal-dismiss",
        keyboard = false,
        backdrop = "static",
    ),
],)


callback!(
    app,
    Output("modal-dismiss", "is_open"),
    Input("open-dismiss", "n_clicks"),
    Input("close-dismiss", "n_clicks"),
    State("modal-dismiss", "is_open"),
) do n_open, n_close, is_open
    return n_open > 0 || n_close > 0 ? is_open == 0 : is_open
end;
