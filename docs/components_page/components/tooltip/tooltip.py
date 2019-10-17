import dash_bootstrap_components as dbc
import dash_html_components as html

tooltip = html.Div(
    [
        html.P(
            [
                "I wonder what ",
                html.Span(
                    "floccinaucinihilipilification",
                    id="tooltip-target",
                    style={"textDecoration": "underline", "cursor": "pointer"},
                ),
                " means?",
            ]
        ),
        dbc.Tooltip(
            "Noun: rare, "
            "the action or habit of estimating something as worthless.",
            target="tooltip-target",
        ),
    ]
)
