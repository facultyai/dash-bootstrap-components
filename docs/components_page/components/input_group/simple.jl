using DashBootstrapComponents, DashHtmlComponents

input_groups = html_div([
    dbc_inputgroup(
        [
            dbc_inputgroupaddon("@", addon_type="prepend"),
            dbc_input(placeholder="Username"),
        ],
        className="mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_input(placeholder="Recipient's username"),
            dbc_inputgroupaddon("@example.com", addon_type="append"),
        ],
        className="mb-3",
    ),
    dbc_inputgroup(
        [
            dbc_inputgroupaddon("\$", addon_type="prepend"),
            dbc_input(placeholder="Amount", type="number"),
            dbc_inputgroupaddon(".00", addon_type="append"),
        ],
        className="mb-3",
    ),
    dbc_inputgroup(
        [dbc_inputgroupaddon("With textarea", addon_type="prepend"), dbc_textarea()],
        className="mb-3",
    ),
    dbc_inputgroup([
        dbc_select(
            options=[
                Dict("label" => "Option 1", "value" => 1),
                Dict("label" => "Option 2", "value" => 2),
            ],
        ),
        dbc_inputgroupaddon("With select", addon_type="append"),
    ]),
]);
