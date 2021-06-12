using DashBootstrapComponents, DashHtmlComponents

modal = html_div([
    dbc_button("Small modal", id = "open-sm", className = "mr-1", n_clicks = 0),
    dbc_button("Large modal", id = "open-lg", className = "mr-1", n_clicks = 0),
    dbc_button("Extra large modal", id = "open-xl", n_clicks = 0),
    dbc_modal(
        [
            dbc_modalheader("Header"),
            dbc_modalbody("A small modal."),
            dbc_modalfooter(
                dbc_button("Close", id = "close-sm", className = "ml-auto", n_clicks = 0),
            ),
        ],
        id = "modal-sm",
        size = "sm",
        is_open = false,
    ),
    dbc_modal(
        [
            dbc_modalheader("Header"),
            dbc_modalbody("A large modal."),
            dbc_modalfooter(
                dbc_button("Close", id = "close-lg", className = "ml-auto", n_clicks = 0),
            ),
        ],
        id = "modal-lg",
        size = "lg",
        is_open = false,
    ),
    dbc_modal(
        [
            dbc_modalheader("Header"),
            dbc_modalbody("An extra large modal."),
            dbc_modalfooter(
                dbc_button("Close", id = "close-xl", className = "ml-auto", n_clicks = 0),
            ),
        ],
        id = "modal-xl",
        size = "xl",
        is_open = false,
    ),
])


function toggle_modal(n1, n2, is_open)
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end


callback!(
    app,
    Output("modal-sm", "is_open"),
    Input("open-sm", "n_clicks"),
    Input("close-sm", "n_clicks"),
    State("modal-sm", "is_open"),
) do n1, n2, is_open
    return toggle_modal(n1, n2, is_open)
end

callback!(
    app,
    Output("modal-lg", "is_open"),
    Input("open-lg", "n_clicks"),
    Input("close-lg", "n_clicks"),
    State("modal-lg", "is_open"),
) do n1, n2, is_open
    return toggle_modal(n1, n2, is_open)
end

callback!(
    app,
    Output("modal-xl", "is_open"),
    Input("open-xl", "n_clicks"),
    Input("close-xl", "n_clicks"),
    State("modal-xl", "is_open"),
) do n1, n2, is_open
    return toggle_modal(n1, n2, is_open)
end
