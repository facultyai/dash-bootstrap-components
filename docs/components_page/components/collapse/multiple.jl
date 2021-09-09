using DashBootstrapComponents, DashHtmlComponents

collapses = html_div([
    dbc_button(
        "Toggle left",
        color = "primary",
        id = "left",
        className = "me-1",
        n_clicks = 0,
    ),
    dbc_button(
        "Toggle right",
        color = "primary",
        id = "right",
        className = "me-1",
        n_clicks = 0,
    ),
    dbc_button("Toggle both", color = "primary", id = "both", n_clicks = 0),
    dbc_row(
        [
            dbc_col(
                dbc_collapse(
                    dbc_card("This is the left card!", body = true),
                    id = "left-collapse",
                    is_open = true,
                ),
            ),
            dbc_col(
                dbc_collapse(
                    dbc_card("This is the right card!", body = true),
                    id = "right-collapse",
                    is_open = true,
                ),
            ),
        ],
        className = "mt-3",
    ),
]);

callback!(
    app,
    Output("left-collapse", "is_open"),
    Input("left", "n_clicks"),
    Input("both", "n_clicks"),
    State("left-collapse", "is_open"),
) do n_left, n_both, is_open
    return n_left > 0 || n_both > 0 ? is_open == 0 : is_open
end;

callback!(
    app,
    Output("right-collapse", "is_open"),
    Input("right", "n_clicks"),
    Input("both", "n_clicks"),
    State("right-collapse", "is_open"),
) do n_right, n_both, is_open
    return n_right > 0 || n_both > 0 ? is_open == 0 : is_open
end;
