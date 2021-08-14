using DashBootstrapComponents, DashHtmlComponents


function make_item(i, size)
    # we use this function to make the example items to avoid code duplication
    return dbc_paginationitem(
        id="pagination-size-$i-$size", item_title="$i", active=(i == 3)
    )
end;


pagination = html_div(
    [
        html_div("Small"),
        dbc_pagination([make_item(i, "sm") for i in 1:5], size="sm"),
        html_div("Default"),
        dbc_pagination([make_item(i, "std") for i in 1:5]),
        html_div("Large"),
        dbc_pagination([make_item(i, "lg") for i in 1:5], size="lg"),
    ]
)
