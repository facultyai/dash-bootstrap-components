import dash_bootstrap_components as dbc
import dash_html_components as html

layout = html.Div(
    [
        dbc.Card(
            dbc.CardBody(
                "This is an example of a component being used in the wild.\n"
                "Below me, you can find the code used to create me."
            ),
            class_name="mb-3",
        ),
        dbc.Button("I am a button!", color="primary"),
    ],
)
