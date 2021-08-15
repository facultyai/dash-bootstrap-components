library(dashBootstrapComponents)
library(dashCoreComponents)
library(dashHtmlComponents)

accordion <- htmlDiv(
    list(
        htmlDiv("Select an item", id="accordion-contents"),
        dbcAccordion(
            list(
                dbcAccordionItem(
                    "This is the content of the first section",
                    title="Item 1",
                ),
                dbcAccordionItem(
                    "This is the content of the second section",
                    title="Item 2",
                ),
                dbcAccordionItem(
                    "This is the content of the third section",
                    title="Item 3",
                ),
            ),
            id="accordion",
        ),
        htmlDiv(
            "Or set the open item dynamically using the slider below",
            class_name="py-2",
        ),
        dccSlider(
            id="item-change",
            min=0,
            max=2,
            step=1,
            value=0,
            marks=list(0="0", 1="1", 2="2")
        ),
    )
)


@app.callback(
    Output("accordion-contents", "children"),
    [Input("accordion", "active_item")],
)
def change_item(item):
    if item:
        return f"Item selected: {item}"
    return "Select an item"


@app.callback(
    Output("accordion", "active_item"), [Input("item-change", "value")]
)
def change_active_item(value):
    return f"item-{value}"
