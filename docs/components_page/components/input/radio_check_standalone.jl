using DashBootstrapComponents, DashHtmlComponents


standalone_radio_check = html_div([
    html_div([
        dbc_checkbox(
            id = "standalone-checkbox",
            label = "This is a checkbox",
            value = false,
        ),
        dbc_switch(
            id = "standalone-switch",
            label = "This is a toggle switch",
            value = false,
        ),
        dbc_radiobutton(
            id = "standalone-radio",
            label = "This is a radio button",
            value = false,
        ),
    ]),
    html_p(id = "standalone-radio-check-output"),
]);


callback!(
    app,
    Output("standalone-radio-check-output", "children"),
    Input("standalone-checkbox", "value"),
    Input("standalone-switch", "value"),
    Input("standalone-radio", "value"),
) do checkbox_checked, switch_checked, radio_checked

    output_string =
        """Selections:  """ *
        """Checkbox: $(checkbox_checked ? "True" : "False"), """ *
        """Toggle Switch: $(switch_checked ? "True" : "False"), """ *
        """Radio Button: $(radio_checked ? "True" : "False")"""
    return output_string
end;
