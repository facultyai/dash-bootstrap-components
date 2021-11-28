using DashBootstrapComponents

button_groups = html_div([
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size = "lg",
        className = "me-1",
    ),
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size = "md",
        className = "me-1",
    ),
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size = "sm",
    ),
]);
