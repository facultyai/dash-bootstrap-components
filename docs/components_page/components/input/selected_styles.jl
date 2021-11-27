using DashBootstrapComponents

checklist = html_div([
    dbc_checklist(
        id = "checklist-selected-style",
        options = [
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Option 3", "value" => 3),
        ],
        label_checked_style = Dict("color" => "red"),
        input_checked_style = Dict(
            "backgroundColor" => "#fa7268",
            "borderColor" => "#ea6258",
        ),
    ),
    html_hr(),
    dbc_radioitems(
        id = "radio-selected-style",
        options = [
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Option 3", "value" => 3),
        ],
        labelCheckedClassName = "text-success",
        inputCheckedClassName = "border border-success bg-success",
    ),
]);
