import dash_bootstrap_components as dbc

carousel = dbc.Carousel(
    items=[
        {"id": "1", "src": "/static/images/slide1.svg"},
        {"id": "2", "src": "/static/images/slide2.svg"},
        {"id": "3", "src": "/static/images/slide3.svg"},
    ],
    controls=True,
    indicators=True,
)
