using DashBootstrapComponents, DashHtmlComponents

input_group = html_div([
    dbc_inputgroup([dbc_inputgrouptext("Large"), dbc_input()], size = "lg"),
    html_br(),
    dbc_inputgroup([dbc_inputgrouptext("Default"), dbc_input()]),
    html_br(),
    dbc_inputgroup([dbc_inputgrouptext("Small"), dbc_input()], size = "sm"),
]);
