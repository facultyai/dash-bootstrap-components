using DashBootstrapComponents, DashCoreComponents, DashHtmlComponents


pagination = html_div([
    html_div("Select a page", id = "pagination-contents"),
    dbc_pagination(id = "pagination", max_value = 10),
    html_div("Or set the page dynamically using the slider below"),
    dcc_slider(
        id = "page-change",
        min = 1,
        max = 10,
        step = 1,
        value = 1,
        marks = Dict(
            1 => "1",
            2 => "2",
            3 => "3",
            4 => "4",
            5 => "5",
            6 => "6",
            7 => "7",
            8 => "8",
            9 => "9",
            10 => "10",
        ),
    ),
])


callback!(
    app,
    Output("pagination-contents", "children"),
    Input("pagination", "active_page"),
) do page
    return page > 0 ? "Page selected: $page" : "Select a page"
end;


callback!(app, Output("pagination", "active_page"), Input("page-change", "value")) do value
    return value
end;
