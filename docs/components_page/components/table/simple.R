library(dashBootstrapComponents)
library(dashHtmlComponents)

table_header <- list(
  htmlThead(
    htmlTr(list(htmlTh("First Name"), htmlTh("Last Name")))
  )
)

row1 <- htmlTr(list(htmlTd("Arthur"), htmlTd("Dent")))
row2 <- htmlTr(list(htmlTd("Ford"), htmlTd("Prefect")))
row3 <- htmlTr(list(htmlTd("Zaphod"), htmlTd("Beeblebrox")))
row4 <- htmlTr(list(htmlTd("Trillian"), htmlTd("Astra")))

table_body <- list(htmlTbody(list(row1, row2, row3, row4)))

table <- dbcTable(c(table_header, table_body), bordered = TRUE)
