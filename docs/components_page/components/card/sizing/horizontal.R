library(dashBootstrapComponents)

card <- dbcCard(
  list(
    dbcRow(
      list(
        dbcCol(
          dbcCardImg(
            src = "/static/images/portrait-placeholder.png",
            className = "img-fluid rounded-start"
          ),
          className = "col-md-4"
        ),
        dbcCol(
          dbcCardBody(
            list(
              h4("Card title", className = "card-title"),
              p(
                paste(
                  "This is a wider card with supporting text",
                  "below as a natural lead-in to additional",
                  "content. This content is a bit longer."
                ),
                className = "card-text"
              ),
              html$small(
                "Last updated 3 mins ago",
                className = "card-text text-muted"
              )
            )
          ),
          className = "col-md-8"
        )
      ),
      className = "g-0 d-flex align-items-center"
    )
  ),
  className = "mb-3",
  style = list("maxWidth" = "540px")
)
