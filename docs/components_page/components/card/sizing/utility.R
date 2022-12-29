library(dashBootstrapComponents)

cards <- div(
  list(
    dbcCard(
      dbcCardBody(
        list(
          html$h5("75% width card", className = "card-title"),
          p(
            list(
              "This card uses the ",
              html$code("w-75"),
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
          html$h5("50% width card", className = "card-title"),
          p(
            list(
              "This card uses the ",
              html$code("w-50"),
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
