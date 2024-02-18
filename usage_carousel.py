from dash import Dash, html, dcc, callback, Input, Output
import dash_bootstrap_components as dbc
import plotly.express as px

df = px.data.tips()

app = Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

slide1 = "https://raw.githubusercontent.com/facultyai/dash-bootstrap-components/main/docs/static/images/slide1.svg"
slide2 = "https://raw.githubusercontent.com/facultyai/dash-bootstrap-components/main/docs/static/images/slide2.svg"
slide3 = html.H1("HI! This is a random component", style={"height": 800, "padding":100}, className="text-center")
slide4 = html.Div(
    [
        html.H4("Restaurant tips by day of week"),
        dcc.Dropdown(["Fri", "Sat", "Sun"], "Fri", clearable=False, id="day"),
        dcc.Graph(id="graph"),
    ],
    className="border",
    style={"height": 800, "padding": 100},
)
slide5= dbc.NavLink(html.Img(src=slide1, width="100%"), href="/home")

carousel = dbc.Carousel(
    items = [
        {
            "key": "1",
            "children": html.Img(src=slide1, width="100%"),
            "caption": html.Div("Slide 1 caption"),
        },
        {"key": "2", "children": html.Img(src=slide2, width="100%")},
        {
            "key": "3",
            "children": slide3,
            "caption": html.H1("Hi Again", className="text-primary"),
        },
        {"key": "4", "children": slide4, "caption": "Slide 4 caption"},
        {"key": "5", "children": slide5, "caption": "Slide with link"},
    ],
    interval=2000,
    ride="carousel",
    variant="dark"
)

app.layout = dbc.Container([carousel])


@callback(Output("graph", "figure"), Input("day", "value"))
def update_bar_chart(day):
    mask = df["day"] == day
    return px.bar(
        df[mask], x="sex", y="total_bill", color="smoker", barmode="group"
    )


app.run(debug=True)
