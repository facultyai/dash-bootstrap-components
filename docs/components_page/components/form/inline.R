library(dashBootstrapComponents)

form <- dbcForm(
  list(
    dbcFormGroup(
      list(
        dbcLabel("Email", class_name = "me-2"),
        dbcInput(
          type = "email",
          placeholder = "Enter email"
        )
      ),
      class_name = "me-3"
    ),
    dbcFormGroup(
      list(
        dbcLabel("Password", class_name = "me-2"),
        dbcInput(
          type = "password",
          placeholder = "Enter password"
        )
      ),
      class_name = "me-3"
    ),
    dbcButton("Submit", color = "primary")
  ),
  inline =  TRUE
)
