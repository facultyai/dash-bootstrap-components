using DashBootstrapComponents

input_group = dbc_inputgroup([
    dbc_button("Random name", id = "input-group-button", n_clicks = 0),
    dbc_input(id = "input-group-button-input", placeholder = "name"),
]);


callback!(
    app,
    Output("input-group-button-input", "value"),
    Input("input-group-button", "n_clicks"),
) do n_clicks
    if n_clicks > 0
        names = ["Arthur Dent", "Ford Prefect", "Trillian Astra"]
        which = n_clicks % length(names)
        return names[which+1]
    else
        return ""
    end
end;
