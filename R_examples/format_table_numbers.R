
library(dash)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new()

df <- data.frame(
  Exchange = c("Canadian Dollar", "Euro", "Japanese Yen", "US Dollar"),
  CAD = c(1, 0.64, 78.91, 75),
  EUR = c(1.56, 1, 122.9, 1.17),
  JPY = c(0.013, 0.0081, 1, 0.0095),
  USD = c(1.33, 0.85, 104.96, 1)
)


app$layout(
  htmlDiv(
    list(
        htmlDiv(
            list(
                "Enter Amount to Exchange",
                dccInput(id = "exchange_amount", type = "number", value = 100)
            ),
            style = list(width =  250),
        ),
        htmlDiv(
            dashDataTable(
                id = "exchange_rate_table",
                columns = list(
                    list(
                      name = "Currency Exchange Table",
                      id = "Exchange"
                    ),
                    list(
                        name = "Canadian Dollar",
                        id = "CAD",
                        type = "numeric",
                        format = list(
                             specifier = "$,.2f",
                             locale = list(
                                symbol = list("$", " CAD")
                            )
                        )
                    ),
                    list(
                        name = "Euro",
                        id = "EUR",
                        type = "numeric",
                        format = list(
                             specifier = "$,.2f",
                             locale = list(
                                symbol = list("€", " EUR"),
                                group = ".",
                                decimal = ","
                            )
                        )
                    ),
                    list(
                        name = "Japanese Yen",
                        id = "JPY",
                        type = "numeric",
                        format = list(
                            specifier = "$,.0f",
                            locale = list(symbol = list("¥", " JPX"))
                        )
                    ),
                    list(
                        name = "US Dollar",
                        id = "USD",
                        type = "numeric",
                       format = list(
                            specifier = "$,.2f"
                       )
                    )
                ),
                data = df_to_list(df)
            )
        )
    )
  )
)


app$callback(
    output("exchange_rate_table", "data"),
    list(input("exchange_amount", "value")),

    function(amount) {
      # multiply numeric columns only
      dff <- cbind(df[1], (df[-1] *  amount))
      return(df_to_list(dff))
    }
)


app$run_server(showcase = TRUE)
