using DashBootstrapComponents, DashHtmlComponents

layout = html_div([
    dbc_card(
        dbc_cardbody(
            "This is an example of a component being used in the wild.\n" *
            "Below me, you can find the code used to create me.",
        ),
        class_name = "mb-3",
    ),
    dbc_button("I am a button!", color = "primary"),
],)
