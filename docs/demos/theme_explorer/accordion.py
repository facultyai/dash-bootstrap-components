import dash_bootstrap_components as dbc
from dash import html

from .util import make_subheading

accordion = html.Div(
    [
        make_subheading("Accordion", "accordion"),
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
        ),
    ],
    className="mb-4",
)
