using DashBootstrapComponents, DashHtmlComponents

progress = html_div([
    dbc_progress(value = 80, id = "animated-progress", animated = false, striped = true),
    dbc_button(
        "Toggle animation",
        id = "animation-toggle",
        className = "mt-3",
        n_clicks = 0,
    ),
]);

callback!(
    app,
    Output("animated-progress", "animated"),
    Input("animation-toggle", "n_clicks"),
    State("animated-progress", "animated"),
) do n, animated
    return n > 0 ? animated == 0 : animated
end;
