library(dashBootstrapComponents)
library(dashHtmlComponents)

cards <- htmlDiv(
  list(
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("75% width card", class_name = "card-title"),
          htmlP(
            list(
              "This card uses the ",
              htmlCode("w-75"),
              " class to set the width to 75%"
            ),
            class_name = "card-text"
          )
        )
      ),
      class_name = "w-75 mb-3"
    ),
    dbcCard(
      dbcCardBody(
        list(
          htmlH5("50% width card", class_name = "card-title"),
          htmlP(
            list(
              "This card uses the ",
              htmlCode("w-50"),
              " class to set the width to 50%"
            ),
            class_name = "card-text"
          )
        )
      ),
      class_name = "w-50"
    )
  )
)
