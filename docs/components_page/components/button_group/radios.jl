using DashBootstrapComponents, DashHtmlComponents

button_group = html_div(
    [
        dbc_radioitems(
            id = "radios",
            className = "btn-group",
            inputClassName = "btn-check",
            labelClassName = "btn btn-outline-primary",
            labelCheckedClassName = "active",
            options = [
                Dict("label" => "Option 1", "value" => 1),
                Dict("label" => "Option 2", "value" => 2),
                Dict("label" => "Option 3", "value" => 3),
            ],
            value = 1,
        ),
        html_div(id = "output"),
    ],
    className = "radio-group",
);

callback!(app, Output("output", "children"), Input("radios", "value")) do value
    return "Selected value: $value"
end;
