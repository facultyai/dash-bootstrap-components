library(dashBootstrapComponents)

form <- dbcForm(
  list(
    dbcFormGroup(
      list(
        dbcLabel("Email", class_name = "mr-2"),
        dbcInput(
          type = "email",
          placeholder = "Enter email"
        )
      ),
      class_name = "mr-3"
    ),
    dbcFormGroup(
      list(
        dbcLabel("Password", class_name = "mr-2"),
        dbcInput(
          type = "password",
          placeholder = "Enter password"
        )
      ),
      class_name = "mr-3"
    ),
    dbcButton("Submit", color = "primary")
  ),
  inline =  TRUE
)
