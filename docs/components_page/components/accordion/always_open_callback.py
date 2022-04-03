import dash_bootstrap_components as dbc
from dash import Input, Output, html

accordion = html.Div(
    [
        dbc.Accordion(
            [
                dbc.AccordionItem(
                    "This is the content of the first section. It has a "
                    "default ID of item-0.",
                    title="Item 1: item-0",
                ),
                dbc.AccordionItem(
                    "This is the content of the second section. It has a "
                    "default ID of item-1.",
                    title="Item 2: item-1",
                ),
                dbc.AccordionItem(
                    "This is the content of the third section. It has a "
                    "default ID of item-2.",
                    title="Item 3: item-2",
                ),
            ],
            id="accordion-always-open",
            always_open=True,
        ),
        html.Div(id="accordion-contents-open-ids", className="mt-3"),
    ]
)


@app.callback(
    Output("accordion-contents-open-ids", "children"),
    [Input("accordion-always-open", "active_item")],
)
def change_item(item):
    return f"Item(s) selected: {item}"
