using DashBootstrapComponents, DashHtmlComponents

progress = html_div([
    dbc_progress(value = 50, style = Dict("height" => "1px"), class_name = "mb-3"),
    dbc_progress(value = 50, style = Dict("height" => "30px")),
]);
