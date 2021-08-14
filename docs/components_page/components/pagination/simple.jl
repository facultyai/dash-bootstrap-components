using Dash, DashBootstrapComponents, DashHtmlComponents


function make_item(i) 
    # we use this function to make the example items to avoid code duplication
    return
        dbc_paginationitem(
            id="pagination-simple-$i", 
            item_title="$i"
        )
end;
    


pagination = html_div(
    list(
        html_div("Choose a page", id="pagination-simple-content"),
        dbc_pagination((1:5)[make_item(i, "sm")])
    )
)


callback!(
    app,
    Output("pagination-simple-content", "children"),
    Output("pagination-simple-1", "active"),
    Output("pagination-simple-2", "active"),
    Output("pagination-simple-3", "active"),
    Output("pagination-simple-4", "active"),
    Output("pagination-simple-5", "active")
    Input("pagination-simple-1", "n_clicks"),
    Input("pagination-simple-2", "n_clicks"),
    Input("pagination-simple-3", "n_clicks"),
    Input("pagination-simple-4", "n_clicks"),
    Input("pagination-simple-5", "n_clicks"),
    State("pagination-simple-1", "active"),
    State("pagination-simple-2", "active"),
    State("pagination-simple-3", "active"),
    State("pagination-simple-4", "active"),
    State("pagination-simple-5", "active")
) do n1, n2, n3, n4, n5, a1, a2, a3, a4, a5
    ctx = callback_context()

    if length(ctx.triggered) == 0
        return "Choose a page", false, false, false, false, false
    else
        button_id = split(ctx.triggered[1][:prop_id], ".")[1]
    end

    if button_id == "pagination-simple-1" && n1 > 0
        return "Page 1 selected", a1 == 0, false, false, false, false
    elseif button_id == "pagination-simple-2" && n2 > 0
        return "Page 2 selected", false, a2 == 0, false, false, false
    elseif button_id == "pagination-simple-3" && n3 > 0
        return "Page 3 selected", false, false, a3 == 0, false, false
    elseif button_id == "pagination-simple-4" && n4 > 0
        return "Page 4 selected", false, false, false, a4 == 0, false
    elseif button_id == "pagination-simple-5" && n5 > 0
        return "Page 5 selected", false, false, false, false, a5 == 0
    else
        return "Unknown page", false, false, false, false, false
    end;
end;