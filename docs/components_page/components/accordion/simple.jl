using DashBootstrapComponents, DashCoreComponents, DashHtmlComponents

accordion = html_div(
    dbc_accordion([
        dbc_accordionitem("This is the content of the first section", title = "Item 1"),
        dbc_accordionitem("This is the content of the second section", title = "Item 2"),
        dbc_accordionitem("This is the content of the third section", title = "Item 3"),
    ],),
)
