library(dashBootstrapComponents)


button <- div(
  list(
    dbcButton(
      "Download",
      href = "/static/data_file.txt",
      download = "my_data.txt",
      external_link = TRUE,
      color = "primary"
    )
  )
)
