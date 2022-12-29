library(dashBootstrapComponents)

table_header <- list(
  html$thead(
    html$tr(list(html$th("First Name"), html$th("Last Name")))
  )
)

row1 <- html$tr(list(html$td("Arthur"), html$td("Dent")))
row2 <- html$tr(list(html$td("Ford"), html$td("Prefect")))
row3 <- html$tr(list(html$td("Zaphod"), html$td("Beeblebrox")))
row4 <- html$tr(list(html$td("Trillian"), html$td("Astra")))

table_body <- list(html$tbody(list(row1, row2, row3, row4)))

table <- dbcTable(c(table_header, table_body), bordered = TRUE)
