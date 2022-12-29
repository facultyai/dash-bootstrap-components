using DashBootstrapComponents

select = dbc_select(
    id = "select",
    options = [
        Dict("label" => "Option 1", "value" => "1"),
        Dict("label" => "Option 2", "value" => "2"),
        Dict("label" => "Disabled option", "value" => "3", "disabled" => true),
    ],
);
