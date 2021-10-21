using DashBootstrapComponents, DashHtmlComponents

fade = html_div([
    dbc_button("Toggle fade", id = "fade-button", className = "mb-3", n_clicks = 0),
    dbc_fade(
        dbc_card(
            dbc_cardbody(html_p("This content fades in and out", className = "card-text")),
        ),
        id = "fade",
        is_in = false,
        appear = false,
    ),
]);

callback!(
    app,
    Output("fade", "is_in"),
    Input("fade-button", "n_clicks"),
    State("fade", "is_in"),
) do n, is_in
    return n > 0 ? is_in == 0 : false
end;
