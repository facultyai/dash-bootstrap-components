using DashBootstrapComponents

dropdown = html_div(
    [
        dbc_label("Dropdown", html_for = "dropdown"),
        dcc_dropdown(
            id = "dropdown",
            options = [
                Dict("label" => "Option 1", "value" => 1),
                Dict("label" => "Option 2", "value" => 2),
            ],
        ),
    ],
    className = "mb-3",
);

slider = html_div(
    [
        dbc_label("Slider", html_for = "slider"),
        dcc_slider(id = "slider", min = 0, max = 10, step = 0.5, value = 3),
    ],
    className = "mb-3",
);

range_slider = html_div(
    [
        dbc_label("RangeSlider", html_for = "range-slider"),
        dcc_rangeslider(id = "range-slider", min = 0, max = 10, value = [3, 7]),
    ],
    className = "mb-3",
);

form = dbc_form([dropdown, slider, range_slider]);
