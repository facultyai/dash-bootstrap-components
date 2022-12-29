using DashBootstrapComponents

modal = html_div([
    dbc_button("Open modal", id = "open-fs"),
    dbc_modal(
        [
            dbc_modalheader(dbc_modaltitle("Fullscreen modal")),
            dbc_modalbody("Wow this thing takes up a lot of space..."),
        ],
        id = "modal-fs",
        fullscreen = true,
    ),
])


callback!(
    app,
    Output("modal-fs", "is_open"),
    Input("open-fs", "n_clicks"),
    State("modal-fs", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open
end;
