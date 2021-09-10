library(dashBootstrapComponents)

email_input <- dbcRow(
  list(
    dbcLabel("Email", html_for = "example-email-row", width = 2),
    dbcCol(
      dbcInput(
        type = "email", id = "example-email-row", placeholder = "Enter email"
      ),
      width = 10
    )
  ),
  className = "mb-3",
)

password_input <- dbcRow(
  list(
    dbcLabel("Password", html_for = "example-password-row", width = 2),
    dbcCol(
      dbcInput(
        type = "password",
        id = "example-password-row",
        placeholder = "Enter password",
      ),
      width = 10
    )
  ),
  className = "mb-3",
)

radios_input <- dbcRow(
  list(
    dbcLabel("Radios", html_for = "example-radios-row", width = 2),
    dbcCol(
      dbcRadioItems(
        id = "example-radios-row",
        options = list(
          list(label = "First radio", value = 1),
          list(label = "Second radio", value = 2),
          list(
            label = "Third disabled radio",
            value = 3,
            disabled = TRUE
          )
        )
      ),
      width = 10
    )
  ),
  className = "mb-3",
)

form <- dbcForm(list(email_input, password_input, radios_input))
