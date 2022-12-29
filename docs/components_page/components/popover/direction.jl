using DashBootstrapComponents


function make_popover(placement)
    return dbc_popover(
        [dbc_popoverheader("Header"), dbc_popoverbody("This is a $placement popover")],
        id = "popover-$placement",
        target = "popover-$placement-target",
        placement = placement,
        is_open = false,
    )
end;

function make_button(placement)
    return dbc_button(
        "Popover on $placement",
        id = "popover-$placement-target",
        className = "mx-2",
        n_clicks = 0,
    )
end;


popovers = html_div(
    [
        [make_button(p) for p in ["top", "left", "right", "bottom"]]
        [make_popover(p) for p in ["top", "left", "right", "bottom"]]
    ],
);

for p in ["top", "left", "right", "bottom"]
    callback!(
        app,
        Output("popover-$p", "is_open"),
        Input("popover-$p-target", "n_clicks"),
        State("popover-$p", "is_open"),
    ) do n, is_open
        return n > 0 ? is_open == 0 : is_open
    end
end;
