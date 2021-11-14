library(dashBootstrapComponents)

form <- dbcForm(
  dbcRow(
    list(
      dbcLabel("Email", width = "auto"),
      dbcCol(
        dbcInput(type = "email", placeholder = "Enter email"),
        className = "me-3"
      ),
      dbcLabel("Password", width = "auto"),
      dbcCol(
        dbcInput(type = "password", placeholder = "Enter password"),
        className = "me-3"
      ),
      dbcCol(dbcButton("Submit", color = "primary"), width = "auto")
    ),
    className = "g-2"
  )
)
