import dash
import dash_bootstrap_components as dbc
import dash_html_components as html

app = dash.Dash()

column_style = {
    "padding-top": "0.75rem",
    "padding-bottom": "0.75rem",
    "background-color": "rgba(86,61,124,.15)",
    "border": "1px solid rgba(86,61,124,.2)",
}

row_style = {"height": "100px", "background-color": "rgba(255,0,0,.1)"}
row_style_no_height = {"background-color": "rgba(255,0,0,.1)"}

# three evenly spaced columns for demonstrating row-based vertical alignment
cols_vertical_align = [
    dbc.Col("One of three columns", style=column_style),
    dbc.Col("One of three columns", style=column_style),
    dbc.Col("One of three columns", style=column_style),
]

# three columns demonstrating column-level vertical alignment
cols_vertical_align_self = [
    dbc.Col("One of three columns", style=column_style, align="start"),
    dbc.Col("One of three columns", style=column_style, align="center"),
    dbc.Col("One of three columns", style=column_style, align="end"),
]

cols_horizontal_align = [
    dbc.Col("One of two columns", width=4, style=column_style),
    dbc.Col("One of two columns", width=4, style=column_style),
]

app.layout = dbc.Container(
    [
        html.H1("Column examples"),
        html.H3("Vertical alignment"),
        dbc.Row(cols_vertical_align, align="start", style=row_style),
        html.Br(),
        dbc.Row(cols_vertical_align, align="center", style=row_style),
        html.Br(),
        dbc.Row(cols_vertical_align, align="end", style=row_style),
        html.Br(),
        dbc.Row(cols_vertical_align_self, style=row_style),
        html.Br(),
        html.H3("Horizontal alignment"),
        dbc.Row(
            cols_horizontal_align, justify="start", style=row_style_no_height
        ),
        html.Br(),
        dbc.Row(
            cols_horizontal_align, justify="center", style=row_style_no_height
        ),
        html.Br(),
        dbc.Row(
            cols_horizontal_align, justify="end", style=row_style_no_height
        ),
        html.Br(),
        dbc.Row(
            cols_horizontal_align, justify="around", style=row_style_no_height
        ),
        html.Br(),
        dbc.Row(
            cols_horizontal_align, justify="between", style=row_style_no_height
        ),
        # add some spacing at the bottom of the page for scrolling
        html.Div(style={"height": "150px"}),
    ]
)


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
