using DashBootstrapComponents

inline_radioitems = dbc_formgroup([
    dbc_label("Choose one"),
    dbc_radioitems(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
        ],
        value=1,
        id="radioitems-inline-input",
        inline=true,
    ),
]);

inline_checklist = dbc_formgroup([
    dbc_label("Choose a bunch"),
    dbc_checklist(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
        ],
        value=[],
        id="checklist-inline-input",
        inline=true,
    ),
]);

inline_switches = dbc_formgroup([
    dbc_label("Toggle a bunch"),
    dbc_checklist(
        options=[
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
        ],
        value=[],
        id="switches-inline-input",
        inline=true,
        switch=true,
    ),
]);

inline_inputs = dbc_form([inline_radioitems, inline_checklist, inline_switches]);
