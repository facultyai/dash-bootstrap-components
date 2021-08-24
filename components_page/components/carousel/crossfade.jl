using DashBootstrapComponents

carousel = dbc_carousel(
    items = [
        Dict("key" => "1", "src" => "/static/images/slide1.svg"),
        Dict("key" => "2", "src" => "/static/images/slide2.svg"),
        Dict("key" => "3", "src" => "/static/images/slide3.svg"),
    ],
    className = "carousel-fade",
);
