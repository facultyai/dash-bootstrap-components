using DashBootstrapComponents, DashHtmlComponents

list_group = html_div([
    dbc_listgroup([
        dbc_listgroupitem("Internal link", href = "/l/components/list_group"),
        dbc_listgroupitem("External link", href = "https://google.com"),
        dbc_listgroupitem("Disabled link", href = "https://google.com", disabled = true),
        dbc_listgroupitem("Button", id = "button-item", n_clicks = 0, action = true),
    ]),
    html_p(id = "counter"),
]);


callback!(app, Output("counter", "children"), Input("button-item", "n_clicks")) do n
    return "Button clicked $n times"
end;
