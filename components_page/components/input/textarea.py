import dash_bootstrap_components as dbc
from dash import html

textareas = html.Div(
    [
        dbc.Textarea(class_name="mb-3", placeholder="A Textarea"),
        dbc.Textarea(
            valid=True,
            size="sm",
            class_name="mb-3",
            placeholder="A small, valid Textarea",
        ),
        dbc.Textarea(
            invalid=True, size="lg", placeholder="A large, invalid Textarea"
        ),
    ]
)
