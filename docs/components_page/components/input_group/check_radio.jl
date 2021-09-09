using DashBootstrapComponents, DashHtmlComponents

input_groups = html_div([
    dbc_inputgroup(
        [dbc_inputgrouptext(dbc_radiobutton()), dbc_input()],
        className = "mb-3",
    ),
    dbc_inputgroup([dbc_inputgrouptext(dbc_checkbox()), dbc_input()]),
]);
