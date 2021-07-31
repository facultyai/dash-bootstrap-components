using DashBootstrapComponents, DashHtmlComponents

input_group = html_div([
    dbc_inputgroup(
        [dbc_inputgroupaddon("Large", addon_type="prepend"), dbc_input()],
        size="lg",
    ),
    html_br(),
    dbc_inputgroup([dbc_inputgroupaddon("Default", addon_type="prepend"), dbc_input()]),
    html_br(),
    dbc_inputgroup(
        [dbc_inputgroupaddon("Small", addon_type="prepend"), dbc_input()],
        size="sm",
    ),
]);
