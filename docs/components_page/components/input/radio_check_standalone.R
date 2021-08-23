library(dashBootstrapComponents)
library(dashHtmlComponents)

standalone_radio_check <- htmlDiv(
  list(
    htmlDiv(
      list(
        dbcCheckbox(
          id = "standalone-checkbox",
          class_name = "form-check-input"
        ),
        dbcLabel(
          "This is a checkbox",
          html_for = "standalone-checkbox",
          class_name = "form-check-label"
        )
      )
    ),
    htmlDiv(
      list(
        dbcRadioButton(
            id = "standalone-radio",
            class_name = "form-check-input"
        ),
        dbcLabel(
          "This is a radio button",
          html_for = "standalone-radio",
          class_name = "form-check-label"
        )
      )
    ),
    htmlBr(),
    htmlP(id = "standalone-radio-check-output")
  )
)


app$callback(
  output("standalone-radio-check-output", "children"),
  list(
    input("standalone-checkbox", "checked"),
    input("standalone-radio", "checked")
  ),
  function(checkbox_checked, radio_checked) {
    if (checkbox_checked & radio_checked) {
      return("Both checked.")
    } else if (checkbox_checked | radio_checked) {
      return("One checked.")
    } else {
      return("None checked.")
    }
  }
)
