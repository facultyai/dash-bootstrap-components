using DashBootstrapComponents, DashCoreComponents, DashHtmlComponents

accordion = html_div(
    dbc_accordion([
        dbc_accordionitem(
            [html_p("This is the content of the first section"), dbc_button("Click here")],
            title = "Item 1",
        ),
        dbc_accordionitem(
            [
                html_p("This is the content of the second section"),
                dbc_button("Don't click me!", color = "danger"),
            ],
            title = "Item 2",
        ),
        dbc_accordionitem("This is the content of the third section", title = "Item 3"),
    ],),
)
