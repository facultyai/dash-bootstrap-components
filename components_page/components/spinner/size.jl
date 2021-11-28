using DashBootstrapComponents

spinners = html_div([
    dbc_spinner(size = "sm"),
    html_hr(),
    dbc_spinner(spinner_style = Dict("width" => "3rem", "height" => "3rem")),
]);
