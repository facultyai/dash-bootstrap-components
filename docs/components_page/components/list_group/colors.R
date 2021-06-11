library(dashBootstrapComponents)

list_group_colors <- dbcListGroup(
  list(
    dbcListGroupItem("The primary item", color = "primary"),
    dbcListGroupItem("A secondary item", color = "secondary"),
    dbcListGroupItem("A successful item", color = "success"),
    dbcListGroupItem("A warning item", color = "warning"),
    dbcListGroupItem("A dangerous item", color = "danger"),
    dbcListGroupItem("An informative item", color = "info")
  )
)
