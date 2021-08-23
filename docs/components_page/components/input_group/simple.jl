using DashBootstrapComponents, DashHtmlComponents

input_groups = html_div([
    dbc_inputgroup(
        [dbc_inputgrouptext("@"), dbc_input(placeholder = "Username")],
        class_name = "mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_input(placeholder = "Recipient's username"),
            dbc_inputgrouptext("@example.com"),
        ],
        class_name = "mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_inputgrouptext("\$"),
            dbc_input(placeholder = "Amount", type = "number"),
            dbc_inputgrouptext(".00"),
        ],
        class_name = "mb-3",
    ),
    dbc_inputgroup(
        [dbc_inputgrouptext("With textarea"), dbc_textarea()],
        class_name = "mb-3",
    ),
    dbc_inputgroup([
        dbc_select(
            options = [
                Dict("label" => "Option 1", "value" => 1),
                Dict("label" => "Option 2", "value" => 2),
            ],
        ),
        dbc_inputgrouptext("With select"),
    ]),
]);
