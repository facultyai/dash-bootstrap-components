using Dash, DashBootstrapComponents, DashHtmlComponents


function make_item(i)
    # we use this function to make the example items to avoid code duplication
    return dbc_card([
        dbc_cardheader(
            html_h2(
                dbc_button(
                    "Collapsible group #$i",
                    color = "link",
                    id = "group-$i-toggle",
                    n_clicks = 0,
                ),
            ),
        ),
        dbc_collapse(
            dbc_cardbody("This is the content of group $i..."),
            id = "collapse-$i",
            is_open = false,
        ),
    ])
end;

accordion = html_div([make_item(1), make_item(2), make_item(3)], class_name = "accordion");

callback!(
    app,
    Output("collapse-1", "is_open"),
    Output("collapse-2", "is_open"),
    Output("collapse-3", "is_open"),
    Input("group-1-toggle", "n_clicks"),
    Input("group-2-toggle", "n_clicks"),
    Input("group-3-toggle", "n_clicks"),
    State("collapse-1", "is_open"),
    State("collapse-2", "is_open"),
    State("collapse-3", "is_open"),
) do n1, n2, n3, is_open1, is_open2, is_open3
    ctx = callback_context()

    if length(ctx.triggered) == 0
        return false, false, false
    else
        button_id = split(ctx.triggered[1][:prop_id], ".")[1]
    end

    if button_id == "group-1-toggle" && n1 > 0
        return is_open1 == 0, false, false
    elseif button_id == "group-2-toggle" && n2 > 0
        return false, is_open2 == 0, false
    elseif button_id == "group-3-toggle" && n3 > 0
        return false, false, is_open3 == 0
    else
        return false, false, false
    end
end;
