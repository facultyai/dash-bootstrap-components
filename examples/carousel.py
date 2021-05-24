import dash
from dash.dependencies import Input, Output, State
import dash_bootstrap_components as dbc
import dash_html_components as html
import dash_core_components as dcc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

src1 = "data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22800%22%20height%3D%22400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20800%20400%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_15ba800aa1d%20text%20%7B%20fill%3A%23555%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A40pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_15ba800aa1d%22%3E%3Crect%20width%3D%22800%22%20height%3D%22400%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22285.921875%22%20y%3D%22218.3%22%3EFirst%20slide%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
src2 = "data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22800%22%20height%3D%22400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20800%20400%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_15ba800aa20%20text%20%7B%20fill%3A%23444%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A40pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_15ba800aa20%22%3E%3Crect%20width%3D%22800%22%20height%3D%22400%22%20fill%3D%22%23666%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22247.3203125%22%20y%3D%22218.3%22%3ESecond%20slide%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
src3 = "data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22800%22%20height%3D%22400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20800%20400%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_15ba800aa21%20text%20%7B%20fill%3A%23333%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A40pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_15ba800aa21%22%3E%3Crect%20width%3D%22800%22%20height%3D%22400%22%20fill%3D%22%23555%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22277%22%20y%3D%22218.3%22%3EThird%20slide%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
COOKIE = "https://todaysmama.com/.image/t_share/MTU5OTEwMzkyMDIyMTE1NzAz/cookie-monster.png"

slides = [
    {
        "id": "1",
        "src": src1,
        "altText": "Slide 1",
        "header": "With header ",
        "caption": "and caption",
    },
    {
        "id": "2",
        "src": src2,
        "altText": "Slide 2",
        "header": "With header only",
    },
    {
        "id": "3",
        "src": src3,
        "altText": "Slide 3",
        "caption": "With caption only",
    },
]

monster = [
    {
        "id": "4",
        "src": COOKIE,
        "altText": "Slide 4",
        "src_style": {"height": "300px", "width": "300px"},
        "src_className": "bg-secondary border border-info",
        "caption": "me love cookies",
        "header": "COOKIES!",
        "caption_className": "text-danger",
    }
]

app.layout = dbc.Container(
    [
        html.H1("Carousel Demo"),
        dbc.Row(
            dbc.Col(
                [
                    dcc.Markdown(
                        """
            ### Simple Example
            This is a carousel with no controls. It cycles through the slides at `interval=2000` ms. 
            Pause by hovering on the slide
            """
                    ),
                    dbc.Carousel(
                        id="carousel-1",
                        items=[{"src": src1}, {"src": src2}, {"src": src3,}],
                        interval=2000,
                        ride="carousel",
                        controls=False,
                        indicators=False,
                    ),
                ],
                width=3,
            ),
            className="m-4 p-4",
        ),
        dbc.Row(
            dbc.Col(
                [
                    dcc.Markdown(
                        """
            ### Carousel with slide controls and indicators
            When `interval=False` the slides will not cycle automatically. Set `controls=True` to show the prev/next
            buttons, and/or show the indicator bars with `indicators=True`. Select individual slides by clicking on a bar
            or an arrow.  The controls can also be used with the `interval`.
            """
                    ),
                    dbc.Carousel(
                        id="carousel-2",
                        items=[{"src": src1}, {"src": src2}, {"src": src3,}],
                        interval=False,
                    ),
                ],
                width=5,
            ),
            className="m-4 p-4",
        ),
        dbc.Row(
            dbc.Col(
                [
                    dcc.Markdown(
                        """
            ### Slides with headers and/or captions
            
            """
                    ),
                    dbc.Carousel(
                        id="carousel-3", items=slides, interval=False,
                    ),
                ],
                width=5,
            ),
            className="m-4 p-4",
        ),
        dbc.Row(
            dbc.Col(
                [
                    dcc.Markdown(
                        """
            ### Slide selection with prev/next arrows or `dbc.RadioItems`
            """
                    ),
                    dbc.Carousel(
                        id="carousel-4",
                        items=slides,
                        interval=False,
                        indicators=False,
                    ),
                    dbc.RadioItems(
                        options=[
                            {"label": "Slide 1", "value": 0},
                            {"label": "Slide 2", "value": 1},
                            {"label": "Slide3", "value": 2},
                        ],
                        value=0,
                        id="slide-number",
                    ),
                ],
                width=5,
            ),
            className="m-4 p-4",
        ),
        dbc.Row(
            dbc.Col(
                [
                    dcc.Markdown(
                        """
            ### Slides with `className` and/or `style` applied to individual slides. 
            This is useful when images are not all the same size or when you want to apply different styles to 
            certain slides.  
            """
                    ),
                    dbc.Carousel(
                        id="carousel-5",
                        items=slides + monster,
                        interval=2000,
                        style={
                            "height": "auto",
                            "width": 600,
                            "textAlign": "center",
                        },
                    ),
                ],
                width=5,
            ),
            className="m-4 p-4",
        ),
    ],
    fluid=True,
    className="p-4",
)


@app.callback(
    Output("carousel-4", "active_index"), Input("slide-number", "value"),
)
def select_slide(idx):
    return idx


if __name__ == "__main__":
    app.run_server(debug=True)
