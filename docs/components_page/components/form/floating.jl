using DashBootstrapComponents

form = dbc_formfloating([
    dbc_input(type = "email", placeholder = "example@internet.com"),
    dbc_label("Email address"),
])
