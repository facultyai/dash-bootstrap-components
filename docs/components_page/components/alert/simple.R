library(dashBootstrapComponents)

alerts <- div(
  list(
    dbcAlert("This is a primary alert", color = "primary"),
    dbcAlert("This is a secondary alert", color = "secondary"),
    dbcAlert("This is a success alert! Well done!", color = "success"),
    dbcAlert("This is a warning alert... be careful...", color = "warning"),
    dbcAlert("This is a danger alert. Scary!", color = "danger"),
    dbcAlert("This is an info alert. Good to know!", color = "info"),
    dbcAlert("This is a light alert", color = "light"),
    dbcAlert("This is a dark alert", color = "dark")
  )
)
