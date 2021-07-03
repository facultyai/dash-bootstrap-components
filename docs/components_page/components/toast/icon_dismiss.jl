using DashBootstrapComponents, DashHtmlComponents

toast = html_div([
    dbc_button(
        "Open toast",
        id="simple-toast-toggle",
        color="primary",
        class_name="mb-3",
        n_clicks=0,
    ),
    dbc_toast(
        [html_p("This is the content of the toast", class_name="mb-0")],
        id="simple-toast",
        header="This is the header",
        icon="primary",
        dismissable=true,
    ),
]);

callback!(
    app,
    Output("simple-toast", "is_open"),
    Input("simple-toast-toggle", "n_clicks"),
) do n
    if n > 0
        return true
    end
    return no_update()
end;
