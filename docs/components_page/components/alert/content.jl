using DashBootstrapComponents, DashHtmlComponents

alert = dbc_alert([
    html_h4("Well done!", className = "alert-heading"),
    html_p(
        "This is a success alert with loads of extra text in it. So much " *
        "that you can see how spacing within an alert works with this " *
        "kind of content.",
    ),
    html_hr(),
    html_p(
        "Let's put some more text down here, but remove the bottom margin",
        className = "mb-0",
    ),
]);
