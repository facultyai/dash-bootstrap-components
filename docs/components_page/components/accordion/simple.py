import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output

accordion = html.Div(
    [
        html.Div("Select an item", id="accordion-contents"),
        dbc.Accordion(
            [
                dbc.AccordionItem(
                    "This is the content of the first section",
                    title="Item 1",
                ),
                dbc.AccordionItem(
                    "This is the content of the second section",
                    title="Item 2",
                ),
                dbc.AccordionItem(
                    "This is the content of the third section",
                    title="Item 3",
                ),
            ],
            id="accordion",
        ),
        html.Div(
            "Or set the open item dynamically using the slider below",
            class_name="py-2",
        ),
        dcc.Slider(
            id="item-change",
            min=0,
            max=2,
            step=1,
            value=0,
            marks={i: str(i) for i in range(3)},
        ),
    ]
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
