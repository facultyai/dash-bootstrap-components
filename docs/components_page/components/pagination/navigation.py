import dash_bootstrap_components as dbc
import dash_html_components as html

pagination = html.Div(
    [
        dbc.Pagination(max_value=5, first_last=True),
        dbc.Pagination(max_value=5, previous_next=True),
        dbc.Pagination(max_value=5, first_last=True, previous_next=True),
    ]
)


import dash

app = dash.Dash(
    external_stylesheets=[
        "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    ]
)
app.layout = pagination

if __name__ == "__main__":
    app.run_server(debug=True)
