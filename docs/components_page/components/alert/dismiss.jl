using DashBootstrapComponents, DashHtmlComponents

alert = html_div([
    dbc_button(
        "Toggle alert with fade",
        id = "alert-toggle-fade",
        className = "me-1",
        n_clicks = 0,
    ),
    dbc_button("Toggle alert without fade", id = "alert-toggle-no-fade", n_clicks = 0),
    html_hr(),
    dbc_alert(
        "Hello! I am an alert",
        id = "alert-fade",
        dismissable = true,
        is_open = true,
    ),
    dbc_alert(
        "Hello! I am an alert that doesn't fade in or out",
        id = "alert-no-fade",
        dismissable = true,
        fade = false,
        is_open = true,
    ),
]);

callback!(
    app,
    Output("alert-fade", "is_open"),
    Input("alert-toggle-fade", "n_clicks"),
    State("alert-fade", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open
end;


callback!(
    app,
    Output("alert-no-fade", "is_open"),
    Input("alert-toggle-no-fade", "n_clicks"),
    State("alert-no-fade", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open
end;
