using DashBootstrapComponents, DashHtmlComponents

varying_size_button_groups = html_div([
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size="lg",
        className="mr-1",
    ),
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size="md",
        className="mr-1",
    ),
    dbc_buttongroup(
        [dbc_button("Left"), dbc_button("Middle"), dbc_button("Right")],
        size="sm",
    ),
]);
