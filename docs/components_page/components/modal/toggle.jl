using DashBootstrapComponents

modal_1 = dbc_modal(
    [
        dbc_modalheader(dbc_modaltitle("Modal 1")),
        dbc_modalbody("This is the content of the first modal"),
        dbc_modalfooter(
            dbc_button(
                "Open Modal 2",
                id = "open-toggle-modal-2",
                className = "ms-auto",
                n_clicks = 0,
            ),
        ),
    ],
    id = "toggle-modal-1",
    is_open = false,
)

modal_2 = dbc_modal(
    [
        dbc_modalheader(dbc_modaltitle("Modal 2")),
        dbc_modalbody("This is the second modal"),
        dbc_modalfooter(
            dbc_button(
                "Back to Modal 1",
                id = "open-toggle-modal-1",
                className = "ms-auto",
                n_clicks = 0,
            ),
        ),
    ],
    id = "toggle-modal-2",
    is_open = false,
)


modal = html_div([
    dbc_button("Open modal", id = "open-toggle-modal", n_clicks = 0),
    modal_1,
    modal_2,
])

callback!(
    app,
    Output("toggle-modal-1", "is_open"),
    Input("open-toggle-modal", "n_clicks"),
    Input("open-toggle-modal-1", "n_clicks"),
    Input("open-toggle-modal-2", "n_clicks"),
    State("toggle-modal-1", "is_open"),
) do n0, n1, n2, is_open
    return n0 > 0 || n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;

callback!(
    app,
    Output("toggle-modal-2", "is_open"),
    Input("open-toggle-modal-2", "n_clicks"),
    Input("open-toggle-modal-1", "n_clicks"),
    State("toggle-modal-2", "is_open"),
) do n2, n1, is_open
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;
