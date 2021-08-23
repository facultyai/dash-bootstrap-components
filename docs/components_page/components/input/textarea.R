library(dashBootstrapComponents)

textareas <- htmlDiv(
  list(
    dbcTextarea(class_name = "mb-3", placeholder = "A Textarea"),
    dbcTextarea(
      valid = TRUE,
      bs_size = "sm",
      class_name = "mb-3",
      placeholder = "A small, valid Textarea",
    ),
    dbcTextarea(
      invalid = TRUE, bs_size = "lg",
      placeholder = "A large, invalid Textarea"
    )
  )
)
