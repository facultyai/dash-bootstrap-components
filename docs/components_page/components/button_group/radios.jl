using DashBootstrapComponents, DashHtmlComponents

button_group = html_div(
    [
        dbc_radioitems(
            id = "radios",
            class_name = "btn-group",
            input_class_name = "btn-check",
            label_class_name = "btn btn-outline-primary",
            label_checked_class_name = "active",
            options = [
                Dict("label" => "Option 1", "value" => 1),
                Dict("label" => "Option 2", "value" => 2),
                Dict("label" => "Option 3", "value" => 3),
            ],
            value = 1,
        ),
        html_div(id = "output"),
    ],
    class_name = "radio-group",
);

callback!(app, Output("output", "children"), Input("radios", "value")) do value
    return "Selected value: $value"
end;
