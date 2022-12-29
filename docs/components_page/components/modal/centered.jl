using DashBootstrapComponents

modal = html_div([
    dbc_button("Open", id = "open-centered"),
    dbc_modal(
        [
            dbc_modalheader(dbc_modaltitle("Header"), close_button = true),
            dbc_modalbody("This modal is vertically centered"),
            dbc_modalfooter(
                dbc_button(
                    "Close",
                    id = "close-centered",
                    className = "ms-auto",
                    n_clicks = 0,
                ),
            ),
        ],
        id = "modal-centered",
        centered = true,
        is_open = false,
    ),
]);

callback!(
    app,
    Output("modal-centered", "is_open"),
    Input("open-centered", "n_clicks"),
    Input("close-centered", "n_clicks"),
    State("modal-centered", "is_open"),
) do n1, n2, is_open
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;
