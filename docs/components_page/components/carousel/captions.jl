using DashBootstrapComponents

carousel = dbc_carousel(
    items = [
        Dict(
            "key" => "1",
            "src" => "/static/images/slide1.svg",
            "header" => "With header ",
            "caption" => "and caption",
        ),
        Dict(
            "key" => "2",
            "src" => "/static/images/slide2.svg",
            "header" => "With header only",
            "caption" => "",
        ),
        Dict(
            "key" => "3",
            "src" => "/static/images/slide3.svg",
            "header" => "",
            "caption" => "This slide has a caption only",
        ),
    ],
);
