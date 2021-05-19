

library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#grid_only
#app <- Dash$new(external_stylesheets = dbcThemes$GRID)



row_breakpoint <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), md = 4),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), md = 4),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), md = 4)
      )
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3),
        dbcCol(htmlDiv(
          "One of four columns", className = "border bg-light"), width = 6, lg = 3)
      )
    )
  )
)


row_horizontal <-  htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4),
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4)
      ),
      justify = "start"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4),
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4)
      ),
      justify = "center"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4),
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4)
      ),
      justify = "end"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4),
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4)
      ),
      justify = "between"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4),
        dbcCol(htmlDiv(
          "One of two columns", className = "border bg-light"), width = 4)
      ),
      justify = "around"
    )
  )
)


row_no_gutters <- dbcRow(
  list(
    dbcCol(htmlDiv("One of three columns"), className = "border bg-light"),
    dbcCol(htmlDiv("One of three columns"), className = "border bg-light"),
    dbcCol(htmlDiv("One of three columns"), className = "border bg-light")
  ),
  no_gutters = TRUE,
)


row_order_offset <- htmlDiv(
  list(
    dbcRow(
      dbcCol(
         htmlDiv("A single, half-width column", className = "border bg-light"),
         width = list(size = 6, offset = 3)
      )
    ),
    dbcRow(
      list(
        dbcCol(
          htmlDiv("The last of three columns", className = "border bg-light"),
          width = list(size = 3, order = "last", offset = 1)
        ),
        dbcCol(
          htmlDiv("The first of three columns", className = "border bg-light"),
          width = list(size = 3, order = 1, offset = 2)
        ),
        dbcCol(
          htmlDiv("The second of three columns", className = "border bg-light"),
          width = list(size = 3, order = 12)
        )
      )
    )
  )
)


row_simple <- htmlDiv(
  list(
    dbcRow(dbcCol(htmlDiv("A single column", className = "border bg-light"))),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      )
    )
  )
)


row_vertical <- htmlDiv(
  list(
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      ),
      align = "start"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      ),
      align = "center"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv("One of three columns", className = "border bg-light"))
      ),
      align = "end"
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"),
               align = "start"),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"),
               align = "center"),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"),
               align = "end")
      )
    )
  )
)


row_width <- htmlDiv(
  list(
    dbcRow(dbcCol(htmlDiv(
      "A single, half-width column", className = "border bg-light"),
                  width = 6, )),
    dbcRow(
      dbcCol(htmlDiv(
        "An automatically sized column", className = "border bg-light"),
             width = "auto")
    ),
    dbcRow(
      list(
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), width = 3),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light")),
        dbcCol(htmlDiv(
          "One of three columns", className = "border bg-light"), width = 3)
      )
    )
  )
)

app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Layout Row with columns"),
      row_simple,
      htmlHr(),
      htmlH2("Layout Row with columns - width "),
      row_width,
      htmlHr(),
      htmlH2("Layout order and offset"),
      row_order_offset,
      htmlHr(),
      htmlH2("Layout Specify width for different screen size"),
      row_breakpoint,
      htmlHr(),
      htmlH2("Layout Row without gutters "),
      row_no_gutters,
      htmlHr(),
      htmlH2("Layout Vertical alignment"),
      row_vertical,
      htmlHr(),
      htmlH2("Layout Horizontal alignment"),
      row_horizontal,
      htmlHr(),
      htmlH2("Layout Use only the grid components"),
      htmlH5("app <- Dash$new(external_stylesheets = dbcThemes$GRID)")
    ),
    className = "p-5")
)

app$run_server(showcase = TRUE)
