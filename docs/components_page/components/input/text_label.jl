using DashBootstrapComponents

text_input = html_div([
    dbc_label("Text"),
    dbc_input(placeholder = "Input goes here...", type = "text"),
    dbc_formtext("Type something in the box above"),
]);
