using DashBootstrapComponents, DashHtmlComponents
using HTTP

LOREM = rstrip(
    String(
        HTTP.get(
            "https://raw.githubusercontent.com/facultyai/dash-bootstrap-components/main/docs/components_page/components/modal/lorem.txt",
        ).body,
    ),
    ['\n'],
)

modal = html_div([
    dbc_button("Scrolling modal", id = "open-scroll", className = "me-1", n_clicks = 0),
    dbc_button("Modal with scrollable body", id = "open-body-scroll", n_clicks = 0),
    dbc_modal(
        [
            dbc_modalheader(dbc_modaltitle("Scrolling modal")),
            dbc_modalbody(LOREM),
            dbc_modalfooter(
                dbc_button(
                    "Close",
                    id = "close-scroll",
                    className = "ms-auto",
                    n_clicks = 0,
                ),
            ),
        ],
        id = "modal-scroll",
        is_open = false,
    ),
    dbc_modal(
        [
            dbc_modalheader(dbc_modaltitle("Modal with scrollable body")),
            dbc_modalbody(LOREM),
            dbc_modalfooter(
                dbc_button(
                    "Close",
                    id = "close-body-scroll",
                    className = "ms-auto",
                    n_clicks = 0,
                ),
            ),
        ],
        id = "modal-body-scroll",
        scrollable = true,
        is_open = false,
    ),
]);

function toggle_modal(n1, n2, is_open)
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;

callback!(
    app,
    Output("modal-scroll", "is_open"),
    Input("open-scroll", "n_clicks"),
    Input("close-scroll", "n_clicks"),
    State("modal-scroll", "is_open"),
) do n1, n2, is_open
    return toggle_modal(n1, n2, is_open)
end;

callback!(
    app,
    Output("modal-body-scroll", "is_open"),
    Input("open-body-scroll", "n_clicks"),
    Input("close-body-scroll", "n_clicks"),
    State("modal-body-scroll", "is_open"),
) do n1, n2, is_open
    return toggle_modal(n1, n2, is_open)
end;
