using DashBootstrapComponents, DashHtmlComponents

card = dbc_card(
    dbc_cardbody([
        html_h4("Title", class_name="card-title"),
        html_h6("Card subtitle", class_name="card-subtitle"),
        html_p(
            "Some quick example text to build on the card title and make " *
            "up the bulk of the card's content.",
            class_name="card-text",
        ),
        dbc_cardlink("Card link", href="#"),
        dbc_cardlink("External link", href="https://google.com"),
    ]),
    style=Dict("width" => "18rem"),
);
