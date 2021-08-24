using DashBootstrapComponents, DashHtmlComponents

button_groups = html_div([
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size="lg",
        class_name="me-1",
    ),
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size="md",
        class_name="me-1",
    ),
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size="sm",
    ),
]);
