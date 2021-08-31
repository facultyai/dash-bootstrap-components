import dash_bootstrap_components as dbc
import dash_html_components as html

checklist = html.Div(
    [
        dbc.Checklist(
            id="checklist-selected-style",
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
                {"label": "Option 3", "value": 3},
            ],
            label_checked_style={"color": "red"},
            input_checked_style={
                "backgroundColor": "#fa7268",
                "borderColor": "#ea6258",
            },
        ),
        html.Hr(),
        dbc.RadioItems(
            id="radio-selected-style",
            options=[
                {"label": "Option 1", "value": 1},
                {"label": "Option 2", "value": 2},
                {"label": "Option 3", "value": 3},
            ],
            label_checked_class_name="text-success",
            input_checked_class_name="border border-success bg-success",
        ),
    ]
)
