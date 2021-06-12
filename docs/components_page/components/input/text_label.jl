using DashBootstrapComponents

text_input = dbc_formgroup([
    dbc_label("Text"),
    dbc_input(placeholder = "Input goes here...", type = "text"),
    dbc_formtext("Type something in the box above"),
])
