library(dashBootstrapComponents)

email_input_simple <- dbcFormGroup(
  list(
    dbcLabel("Email", html_for = "example-email"),
    dbcInput(type = "email", id = "example-email", placeholder = "Enter email"),
    dbcFormText(
      "Are you on email? You simply have to be these days",
      color = "secondary",
    )
  )
)

password_input_simple <- dbcFormGroup(
  list(
    dbcLabel("Password", html_for = "example-password"),
    dbcInput(
        type = "password",
        id = "example-password",
        placeholder = "Enter password",
    ),
    dbcFormText(
        "A password stops mean people taking your stuff",
        color = "secondary"
    )
  )
)

form <- dbcForm(list(email_input_simple, password_input_simple))
