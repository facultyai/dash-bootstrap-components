using DashBootstrapComponents, DashHtmlComponents

carousel = html_div([
    dbc_carousel(
        id = "carousel",
        items = [
            Dict("key" => "1", "src" => "/static/images/slide1.svg"),
            Dict("key" => "2", "src" => "/static/images/slide2.svg"),
            Dict("key" => "3", "src" => "/static/images/slide3.svg"),
        ],
        controls = false,
        indicators = false,
        interval = nothing,
    ),
    dbc_radioitems(
        id = "slide-number",
        options = [
            Dict("label" => "Slide 1", "value" => 0),
            Dict("label" => "Slide 2", "value" => 1),
            Dict("label" => "Slide 3", "value" => 2),
        ],
        value = 0,
        inline = true,
    ),
]);

callback!(app, Output("carousel", "active_index"), Input("slide-number", "value")) do idx
    return idx
end;
