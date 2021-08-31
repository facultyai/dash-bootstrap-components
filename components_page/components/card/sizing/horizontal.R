library(dashBootstrapComponents)
library(dashHtmlComponents)

card <- dbcCard(
  list(
    dbcRow(
      list(
        dbcCol(
          dbcCardImg(
            src = "/static/images/placeholder286x180.png",
            class_name = "img-fluid rounded-start"
          ),
          class_name = "col-md-4"
        ),
        dbcCol(
          dbcCardBody(
            list(
              htmlH4("Card title", class_name = "card-title"),
              htmlP(
                paste(
                  "This is a wider card with supporting text",
                  "below as a natural lead-in to additional",
                  "content. This content is a bit longer."
                ),
                class_name = "card-text"
              ),
              htmlSmall(
                "Last updated 3 mins ago",
                class_name = "card-text text-muted"
              )
            )
          ),
          class_name = "col-md-8"
        )
      ),
      class_name = "g-0 d-flex align-items-center"
    )
  ),
  class_name = "mb-3",
  style = list("maxWidth" = "540px")
)
