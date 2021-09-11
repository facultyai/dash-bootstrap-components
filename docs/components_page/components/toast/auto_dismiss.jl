using DashBootstrapComponents, DashHtmlComponents

toast = html_div([
    dbc_button(
        "Open toast",
        id = "auto-toast-toggle",
        color = "primary",
        className = "mb-3",
        n_clicks = 0,
    ),
    dbc_toast(
        [html_p("This is the content of the toast", className = "mb-0")],
        id = "auto-toast",
        header = "This is the header",
        icon = "primary",
        duration = 4000,
    ),
]);


callback!(app, Output("auto-toast", "is_open"), Input("auto-toast-toggle", "n_clicks")) do n
    return true
end;
