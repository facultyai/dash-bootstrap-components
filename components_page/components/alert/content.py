import dash_bootstrap_components as dbc
import dash_html_components as html

alert = dbc.Alert(
    [
        html.H4("Well done!", className="alert-heading"),
        html.P(
            "This is a success alert with loads of extra text in it. So much "
            "that you can see how spacing within an alert works with this "
            "kind of content."
        ),
        html.Hr(),
        html.P(
            "Let's put some more text down here, but remove the bottom margin",
            className="mb-0",
        ),
    ]
)
