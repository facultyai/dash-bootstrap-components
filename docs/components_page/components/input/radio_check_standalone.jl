using DashBootstrapComponents, DashHtmlComponents

standalone_radio_check = html_div([
    html_div(
        [
            dbc_checkbox(id = "standalone-checkbox"),
            dbc_label("This is a checkbox", html_for = "standalone-checkbox", check = true),
        ],
        class_name = "form-check",
    ),
    html_div(
        [
            dbc_radiobutton(id = "standalone-radio"),
            dbc_label(
                "This is a radio button",
                html_for = "standalone-radio",
                check = true,
            ),
        ],
        class_name = "form-check",
    ),
    html_p(id = "standalone-radio-check-output"),
]);


callback!(
    app,
    Output("standalone-radio-check-output", "children"),
    Input("standalone-checkbox", "checked"),
    Input("standalone-radio", "checked"),
) do checkbox_checked, radio_checked
    if checkbox_checked == 1 && radio_checked == 1
        return "Both checked."
    elseif checkbox_checked == 1 || radio_checked == 1
        return "One checked."
    else
        return "None checked."
    end
end;
