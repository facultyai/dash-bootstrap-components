using Dash, DashBootstrapComponents

dropdown_menu_items = [
    dbc_dropdownmenuitem("Deep thought", id = "dropdown-menu-item-1"),
    dbc_dropdownmenuitem("Hal", id = "dropdown-menu-item-2"),
    dbc_dropdownmenuitem(divider = true),
    dbc_dropdownmenuitem("Clear", id = "dropdown-menu-item-clear"),
];


input_group = dbc_inputgroup([
    dbc_dropdownmenu(dropdown_menu_items, label = "Generate"),
    dbc_input(id = "input-group-dropdown-input", placeholder = "name"),
]);


callback!(
    app,
    Output("input-group-dropdown-input", "value"),
    Input("dropdown-menu-item-1", "n_clicks"),
    Input("dropdown-menu-item-2", "n_clicks"),
    Input("dropdown-menu-item-clear", "n_clicks"),
) do n1, n2, n_clear
    ctx = callback_context()

    if length(ctx.triggered) == 0
        return ""
    else
        button_id = split(ctx.triggered[1][:prop_id], ".")[1]
    end

    if button_id == "dropdown-menu-item-clear"
        return ""
    elseif button_id == "dropdown-menu-item-1"
        names = ["Arthur Dent", "Ford Prefect", "Trillian Astra"]
        which = n1 % length(names)
        return names[which+1]
    else
        names = ["David Bowman", "Frank Poole", "Dr. Heywood Floyd"]
        which = n2 % length(names)
        return names[which+1]

    end
end;
