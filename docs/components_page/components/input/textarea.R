library(dashBootstrapComponents)

textareas <- htmlDiv(
  list(
    dbcTextarea(className = "mb-3", placeholder = "A Textarea"),
    dbcTextarea(
      valid = TRUE,
      size = "sm",
      className = "mb-3",
      placeholder = "A small, valid Textarea",
    ),
    dbcTextarea(
      invalid = TRUE, size = "lg",
      placeholder = "A large, invalid Textarea"
    )
  )
)
