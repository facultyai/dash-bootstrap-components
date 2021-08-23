import dash_bootstrap_components as dbc
import dash_html_components as html

layout <- htmlDiv(
    list(
        dbcCard(
            dbcCardBody(
                paste(
                    "This is an example of a component being used in the wild.\n",
                    "Below me, you can find the code used to create me."
                )
            ),
            class_name="mb-3",
        ),
        dbcButton("I am a button!", color="primary")
    )
)
