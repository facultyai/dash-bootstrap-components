using DashBootstrapComponents, DashHtmlComponents

cards = dbc_card(
    dbc_cardbody([
        html_h5("Custom CSS", className = "card-title"),
        html_p(
            "This card has inline styles applied controlling the width. " *
            "You could also apply the same styles with a custom CSS class.",
        ),
    ]),
    style = Dict("width" => "18rem"),
);
