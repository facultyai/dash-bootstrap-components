using DashBootstrapComponents

fade = html_div([
    dbc_button(
        "Toggle fade",
        id = "fade-transition-button",
        className = "mb-3",
        n_clicks = 0,
    ),
    dbc_fade(
        dbc_card(
            dbc_cardbody(html_p("This content fades in and out", className = "card-text")),
        ),
        id = "fade-transition",
        is_in = true,
        style = Dict("transition" => "opacity 2000ms ease"),
        timeout = 2000,
    ),
]);

callback!(
    app,
    Output("fade-transition", "is_in"),
    Input("fade-transition-button", "n_clicks"),
    State("fade-transition", "is_in"),
) do n, is_in
    return n > 0 ? is_in == 0 : true
end;
