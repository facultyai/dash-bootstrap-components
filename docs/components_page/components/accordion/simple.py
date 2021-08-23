import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

accordion = html.Div(
    [
        dbc.Accordion(
            [
                dbc.AccordionItem(
                    "This is the content of the first section",
                    title="Item 1",
                    item_id="item-1",
                ),
                dbc.AccordionItem(
                    "This is the content of the second section",
                    title="Item 2",
                    item_id="item-2",
                ),
                dbc.AccordionItem(
                    "This is the content of the third section",
                    title="Item 3",
                    item_id="item-3",
                ),
            ],
            id="accordion",
            active_item="item-1",
        ),
        html.Div("Select an item", id="accordion-contents", class_name="mt-3"),
    ]
)


@app.callback(
    Output("accordion-contents", "children"),
    [Input("accordion", "active_item")],
)
def change_item(item):
    return f"Item selected: {item}"
