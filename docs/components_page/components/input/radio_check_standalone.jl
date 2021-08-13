using DashBootstrapComponents, DashHtmlComponents

standalone_radio_check = html_div([
    dbc_formgroup(
        [
            dbc_checkbox(id="standalone-checkbox", class_name="form-check-input"),
            dbc_label(
                "This is a checkbox",
                html_for="standalone-checkbox",
                class_name="form-check-label",
            ),
        ],
        check=true,
    ),
    dbc_formgroup(
        [
            dbc_radiobutton(id="standalone-radio", class_name="form-check-input"),
            dbc_label(
                "This is a radio button",
                html_for="standalone-radio",
                class_name="form-check-label",
            ),
        ],
        check=true,
    ),
    html_br(),
    html_p(id="standalone-radio-check-output"),
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
