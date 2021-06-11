library(dashBootstrapComponents)
library(dashHtmlComponents)

standalone_radio_check <- htmlDiv(
  list(
    dbcFormGroup(
      list(
        dbcCheckbox(
          id = "standalone-checkbox", checked = FALSE,
          className = "form-check-input"
        ),
        dbcLabel(
          "This is a checkbox",
          html_for = "standalone-checkbox",
          className = "form-check-label"
        )
      ),
      check = TRUE
    ),
    dbcFormGroup(
      list(
        dbcRadioButton(
            id = "standalone-radio", checked = FALSE,
            className = "form-check-input"
        ),
        dbcLabel(
          "This is a radio button",
          html_for = "standalone-radio",
          className = "form-check-label"
        )
      ),
      check = TRUE,
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
