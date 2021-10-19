using DashBootstrapComponents, DashHtmlComponents

nav = html_div([
    dbc_nav([
        dbc_navlink("Internal link", href = "/l/components/nav"),
        dbc_navlink("External link", href = "https://github.com"),
        dbc_navlink("External relative", href = "/l/components/nav", external_link = true),
        dbc_navlink("Button", id = "button-link", n_clicks = 0),
    ]),
    html_br(),
    html_p(id = "button-clicks"),
]);

callback!(app, Output("button-clicks", "children"), Input("button-link", "n_clicks")) do n
    return "Button clicked $n times"
end;
