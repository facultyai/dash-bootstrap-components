import dash_bootstrap_components as dbc
import dash_html_components as html

badges = html.Span(
    [
        dbc.Badge("Primary", color="primary", class_name="me-1"),
        dbc.Badge("Secondary", color="secondary", class_name="me-1"),
        dbc.Badge("Success", color="success", class_name="me-1"),
        dbc.Badge("Warning", color="warning", class_name="me-1"),
        dbc.Badge("Danger", color="danger", class_name="me-1"),
        dbc.Badge("Info", color="info", class_name="me-1"),
        dbc.Badge(
            "Light", text_color="dark", color="light", class_name="me-1"
        ),
        dbc.Badge("Dark", color="dark"),
    ]
)
