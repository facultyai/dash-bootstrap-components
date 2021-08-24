using DashBootstrapComponents, DashHtmlComponents

radioitems = html_div([
    dbc_label("Choose one"),
    dbc_radioitems(
        options = [
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Disabled Option", "value" => 3, "disabled" => true),
        ],
        value = 1,
        id = "radioitems-input",
    ),
]);

checklist = html_div([
    dbc_label("Choose a bunch"),
    dbc_checklist(
        options = [
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Disabled Option", "value" => 3, "disabled" => true),
        ],
        value = [1],
        id = "checklist-input",
    ),
]);

switches = html_div([
    dbc_label("Toggle a bunch"),
    dbc_checklist(
        options = [
            Dict("label" => "Option 1", "value" => 1),
            Dict("label" => "Option 2", "value" => 2),
            Dict("label" => "Disabled Option", "value" => 3, "disabled" => true),
        ],
        value = [1],
        id = "switches-input",
        switch = true,
    ),
]);

inputs = html_div([
    dbc_form([radioitems, checklist, switches]),
    html_p(id = "radioitems-checklist-output"),
]);


callback!(
    app,
    Output("radioitems-checklist-output", "children"),
    Input("radioitems-input", "value"),
    Input("checklist-input", "value"),
    Input("switches-input", "value"),
) do radio_items_value, checklist_value, switches_value

    n_checkboxes = length(checklist_value)
    n_switches = length(switches_value)

    output_string =
        """Radio button $radio_items_value, $n_checkboxes """ *
        """checklist item$(n_checkboxes != 1 ? "s" : "") and $n_switches """ *
        """switch$(n_switches != 1 ? "es" : "") selected."""

    return output_string
end;
