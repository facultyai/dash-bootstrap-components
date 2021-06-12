library(dashBootstrapComponents)

form_inline <- dbcForm(
  list(
    dbcFormGroup(
      list(
        dbcLabel("Email", className = "mr-2"),
        dbcInput(
          type = "email",
          placeholder = "Enter email"
        )
      ),
      className = "mr-3"
    ),
    dbcFormGroup(
      list(
        dbcLabel("Password", className = "mr-2"),
        dbcInput(
          type = "password",
          placeholder = "Enter password"
        )
      ),
      className = "mr-3"
    ),
    dbcButton("Submit", color = "primary")
  ),
  inline =  TRUE
)
