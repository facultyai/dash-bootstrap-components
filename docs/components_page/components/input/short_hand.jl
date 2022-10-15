using DashBootstrapComponents

# `options` is provided as an array of dictionaries
checklist = html_div(
    [
        dbc_checklist(
            [
                Dict("label" => "Option 1", "value" => 1),
                Dict("label" => "Option B", "value" => 2),
                Dict("label" => "Option III", "value" => 3),
                Dict("label" => "4", "value" => 4),
            ],
            [3],
            id = "shorthand-checklist",
        ),
    ],
    className = "py-2",
);

# All items in this list will have the value the same as the label
select = html_div(
    dbc_select(
        ["Option 1", "Option B", "Option III", 4],
        "Option III",
        id = "shorthand-select",
    ),
    className = "py-2",
);

# `options` is provided as value: label pairs - value must be a string
radioitems = html_div(
    [
        dbc_radioitems(
            Dict(
                "1" => "Option 1",
                "2" => "Option B",
                "3" => "Option III",
                "4" => 4,
            ),
            "3",
            id = "shorthand-radio",
        ),
    ],
    className = "py-2",
);

short_hand = html_div(
    [
        dbc_form([checklist, select, radioitems]),
        html_div(id = "shorthand-output"),
    ]
);


callback!(
    app,
    Output("shorthand-output", "children"),
    Input("shorthand-checklist", "value"),
    Input("shorthand-select", "value"),
    Input("shorthand-radio", "value"),
) do checklist_value, select_value, radio_items_value

    checklist = join([c::str for c=checklist_value], ", ")

    output = [
        html_p("""Checklist: [$checklist]"""),
        html_p("""Selected: $select_value"""),
        html_p("""Radio: $radio_items_value"""),
    ]
    return output

end;
