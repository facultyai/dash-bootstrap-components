library(dashBootstrapComponents)
library(dashHtmlComponents)

cards <- htmlDiv(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("75% width card", className = "card-title"),
          htmlP(
            list(
              "This card uses the ",
              htmlCode("w-75"),
              " class to set the width to 75%"
            ),
            className = "card-text"
          )
        )
      ),
      className = "w-75 mb-3"
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("50% width card", className = "card-title"),
          htmlP(
            list(
              "This card uses the ",
              htmlCode("w-50"),
              " class to set the width to 50%"
            ),
            className = "card-text"
          )
        )
      ),
      className = "w-50"
    )
  )
)
