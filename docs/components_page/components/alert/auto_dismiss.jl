using DashBootstrapComponents

alert = html_div([
    dbc_button("Toggle", id = "alert-toggle-auto", className = "me-1", n_clicks = 0),
    html_hr(),
    dbc_alert(
        "Hello! I am an auto-dismissing alert!",
        id = "alert-auto",
        is_open = true,
        duration = 4000,
    ),
]);

callback!(
    app,
    Output("alert-auto", "is_open"),
    Input("alert-toggle-auto", "n_clicks"),
    State("alert-auto", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open
end;
