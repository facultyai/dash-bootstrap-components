using DashBootstrapComponents

color_selector = html_div(
    [
        html_div("Select a colour theme:"),
        dbc_select(
            id = "change-table-color",
            options = [
                Dict("label" => "primary", "value" => "primary"),
                Dict("label" => "secondary", "value" => "secondary"),
                Dict("label" => "success", "value" => "success"),
                Dict("label" => "danger", "value" => "danger"),
                Dict("label" => "warning", "value" => "warning"),
                Dict("label" => "info", "value" => "info"),
                Dict("label" => "light", "value" => "light"),
                Dict("label" => "dark", "value" => "dark"),
            ],
            value = "primary",
        ),
    ],
    className = "p-3 m-2 border",
)

table = html_div([
    color_selector,
    dbc_table(
        # using the same table as in the above example
        table_header + table_body,
        id = "table-color",
        color = "primary",
    ),
])

callback!(
    app,
    Output("table-color", "color"),
    Input("change-table-color", "value"),
) do color
    return color
end;
