using DashBootstrapComponents

text_input = html_div([
    dbc_input(id = "input", placeholder = "Type something...", type = "text"),
    html_br(),
    html_p(id = "output"),
]);

callback!(app, Output("output", "children"), Input("input", "value")) do value
    return value
end;
