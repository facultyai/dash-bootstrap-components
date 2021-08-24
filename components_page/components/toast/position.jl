using DashBootstrapComponents, DashHtmlComponents

toast = html_div([
    dbc_button(
        "Open toast",
        id = "positioned-toast-toggle",
        color = "primary",
        n_clicks = 0,
    ),
    dbc_toast(
        "This toast is placed in the top right",
        id = "positioned-toast",
        header = "Positioned toast",
        is_open = false,
        dismissable = true,
        icon = "danger",
        # top: 66 positions the toast below the navbar
        style = Dict("position" => "fixed", "top" => 66, "right" => 10, "width" => 350),
    ),
]);

callback!(
    app,
    Output("positioned-toast", "is_open"),
    Input("positioned-toast-toggle", "n_clicks"),
) do n
    return n > 0
end;
