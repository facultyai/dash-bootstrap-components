
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#-------------- helper

message <- "No R helper function (sorry)"

# ------------- simple


table_header <- list(
  htmlThead(
    htmlTr(list(htmlTh("First Name"), htmlTh("Last Name"))))
)

row1 <- htmlTr(list(htmlTd("Arthur"), htmlTd("Dent")))
row2 <- htmlTr(list(htmlTd("Ford"), htmlTd("Prefect")))
row3 <- htmlTr(list(htmlTd("Zaphod"), htmlTd("Beeblebrox")))
row4 <- htmlTr(list(htmlTd("Trillian"), htmlTd("Astra")))

table_body <- list(htmlTbody(list(row1, row2, row3, row4)))

table <- dbcTable(c(table_header, table_body), bordered = TRUE)


# ------------- kwargs

table <- dbcTable(
    # using the same table as in the above example
    c(table_header, table_body),
    bordered = TRUE,
    dark = TRUE,
    hover = TRUE,
    responsive = TRUE,
    striped = TRUE,
)


# -------------


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Table Simple example"),
      table
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
