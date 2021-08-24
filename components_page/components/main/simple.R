library(dashBootstrapComponents)
library(dashHtmlComponents)

layout <- htmlDiv(
  list(
    dbcCard(
      dbcCardBody(
        paste(
          "This is an example of a component being used in the wild.",
          "Below me, you can find the code used to create me.",
          sep = "\n"
        )
      ),
      class_name = "mb-3",
    ),
    dbcButton("I am a button!", color = "primary")
  )
)
