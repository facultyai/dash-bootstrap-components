library(dashBootstrapComponents)

input_textareas <- htmlDiv(
  list(
    dbcTextarea(className = "mb-3", placeholder = "A Textarea"),
    dbcTextarea(
      valid = TRUE,
      bs_size = "sm",
      className = "mb-3",
      placeholder = "A small, valid Textarea",
    ),
    dbcTextarea(
        invalid = TRUE, bs_size = "lg",
        placeholder = "A large, invalid Textarea"
    )
  )
)
