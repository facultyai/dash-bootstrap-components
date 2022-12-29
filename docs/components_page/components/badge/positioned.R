library(dashBootstrapComponents)

badge <- dbcButton(
  list(
    "Notifications",
    dbcBadge(
      "99+",
      color = "danger",
      pill = TRUE,
      text_color = "white",
      className = "position-absolute top-0 start-100 translate-middle"
    )
  ),
  color = "primary",
  className = "position-relative"
)
