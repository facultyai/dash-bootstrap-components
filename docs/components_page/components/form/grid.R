library(dashBootstrapComponents)

form <- dbcRow(
  list(
    dbcCol(
      dbcFormGroup(
        list(
          dbcLabel("Email", html_for = "example-email-grid"),
          dbcInput(
            type = "email",
            id = "example-email-grid",
            placeholder = "Enter email"
          )
        )
      ),
      width = 6,
    ),
    dbcCol(
      dbcFormGroup(
        list(
          dbcLabel("Password", html_for = "example-password-grid"),
          dbcInput(
            type = "password",
            id = "example-password-grid",
            placeholder = "Enter password"
          )
        )
      ),
      width = 6
    )
  ),
  form = TRUE
)
