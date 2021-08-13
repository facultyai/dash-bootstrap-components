using DashBootstrapComponents, DashHtmlComponents

input_groups = html_div([
    dbc_inputgroup(
        [dbc_inputgroupaddon(dbc_radiobutton(), addon_type="prepend"), dbc_input()],
        class_name="mb-3",
    ),
    dbc_inputgroup([
        dbc_inputgroupaddon(dbc_checkbox(), addon_type="prepend"),
        dbc_input(),
    ]),
]);
