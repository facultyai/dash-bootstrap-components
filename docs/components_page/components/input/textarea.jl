using DashBootstrapComponents, DashHtmlComponents

textareas = html_div([
    dbc_textarea(class_name = "mb-3", placeholder = "A Textarea"),
    dbc_textarea(
        valid = true,
        bs_size = "sm",
        class_name = "mb-3",
        placeholder = "A small, valid Textarea",
    ),
    dbc_textarea(invalid = true, bs_size = "lg", placeholder = "A large, invalid Textarea"),
]);
