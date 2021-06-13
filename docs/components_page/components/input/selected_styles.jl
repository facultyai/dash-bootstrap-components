using DashBootstrapComponents

checklist = dbc_checklist(
    id="checklist-selected-style",
    options=[
        Dict("label" => "Option 1", "value" => 1),
        Dict("label" => "Option 2", "value" => 2),
        Dict("label" => "Option 3", "value" => 3),
    ],
    labelCheckedStyle=Dict("color" => "red"),
);
