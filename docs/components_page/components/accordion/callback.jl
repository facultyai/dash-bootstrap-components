using DashBootstrapComponents, DashCoreComponents, DashHtmlComponents

accordion = html_div([
    dbc_accordion(
        [
            dbc_accordionitem(
                "This is the content of the first section",
                title = "Item 1",
                item_id = "item-1",
            ),
            dbc_accordionitem(
                "This is the content of the second section",
                title = "Item 2",
                item_id = "item-2",
            ),
            dbc_accordionitem(
                "This is the content of the third section",
                title = "Item 3",
                item_id = "item-3",
            ),
        ],
        id = "accordion",
        active_item = "item-1",
    ),
    html_div(id = "accordion-contents", className = "mt-3"),
])


callback!(
    app,
    Output("accordion-contents", "children"),
    Input("accordion", "active_item"),
) do item
    return "Item selected: $item"
end;
