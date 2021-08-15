import dash_bootstrap_components as dbc
import dash_html_components as html

accordion = html.Div(
    dbc.Container(
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
            start_collapsed=True,
        ),
        class_name="m-3",
    ),
)
