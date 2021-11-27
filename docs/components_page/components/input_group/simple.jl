using DashBootstrapComponents

input_groups = html_div([
    dbc_inputgroup(
        [dbc_inputgrouptext("@"), dbc_input(placeholder = "Username")],
        className = "mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_input(placeholder = "Recipient's username"),
            dbc_inputgrouptext("@example.com"),
        ],
        className = "mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_inputgrouptext("\$"),
            dbc_input(placeholder = "Amount", type = "number"),
            dbc_inputgrouptext(".00"),
        ],
        className = "mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_inputgrouptext("Total:"),
            dbc_inputgrouptext("\$"),
            dbc_input(placeholder = "Amount", type = "number"),
            dbc_inputgrouptext(".00"),
            dbc_inputgrouptext("only"),
        ],
        className = "mb-3",
    ),
    dbc_inputgroup(
        [dbc_inputgrouptext("With textarea"), dbc_textarea()],
        className = "mb-3",
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
