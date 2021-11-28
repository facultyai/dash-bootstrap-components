using DashBootstrapComponents

button = html_div([
    dbc_button("Click me", id = "example-button", className = "me-2", n_clicks = 0),
    html_span(id = "example-output", style = Dict("verticalAlign" => "middle")),
]);

callback!(
    app,
    Output("example-output", "children"),
    Input("example-button", "n_clicks"),
) do n
    return n > 0 ? "Clicked $n times." : "Not clicked."
end;
