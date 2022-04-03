using DashBootstrapComponents

accordion = html_div([
    dbc_accordion(
        [
            dbc_accordionitem(
                "This is the content of the first section. It has a " *
                "default ID of item-0.",
                title = "Item 1: item-0",
            ),
            dbc_accordionitem(
                "This is the content of the second section. It has a " *
                "default ID of item-1.",
                title = "Item 2: item-1",
            ),
            dbc_accordionitem(
                "This is the content of the third section. It has a " *
                "default ID of item-2.",
                title = "Item 3: item-2",
            ),
        ],
        id = "accordion-always-open",
        always_open = true,
    ),
    html_div(id = "accordion-contents-open-ids", className = "mt-3"),
])

callback!(
    app,
    Output("accordion-contents-open-ids", "children"),
    Input("accordion-always-open", "active_item"),
) do item
    return "Item(s) selected: $item"
end;
