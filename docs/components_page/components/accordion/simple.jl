using DashBootstrapComponents, DashCoreComponents, DashHtmlComponents

accordion = html_div(
    [
        html_div("Select an item", id="accordion-contents"),
        dbc_accordion(
            [
                dbc_accordionitem(
                    "This is the content of the first section",
                    title="Item 1",
                ),
                dbc_accordionitem(
                    "This is the content of the second section",
                    title="Item 2",
                ),
                dbc_accordionitem(
                    "This is the content of the third section",
                    title="Item 3",
                ),
            ],
            id="accordion",
        ),
        html_div(
            "Or set the open item dynamically using the slider below",
            class_name="py-2",
        ),
        dcc_slider(
            id="item-change",
            min=0,
            max=2,
            step=1,
            value=0,
            marks=Dict(0 => "0", 1 => "1", 2 => "2"),
        ),
    ]
)


callback(
    app,
    Output("accordion-contents", "children"),
    Input("accordion", "active_item"),
) do item
    return item ? "Item selected: $item" : "Select an item"
end;


callback(
    app,
    Output("accordion", "active_item"), 
    Input("item-change", "value")
) do value
    return "item-$value"
end;
