using DashBootstrapComponents, DashHtmlComponents

progress = html_div([
    dbc_progress(value = 50, style = Dict("height" => "1px"), className = "mb-3"),
    dbc_progress(value = 50, style = Dict("height" => "30px")),
]);
