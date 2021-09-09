library(dashBootstrapComponents)
library(dashHtmlComponents)

standalone_radio_check <- htmlDiv(
  list(
    htmlDiv(
      list(
        dbcCheckbox(
          id = "standalone-checkbox",
          label = "This is a checkbox",
          value = TRUE
        ),
        dbcSwitch(
          id = "standalone-switch",
          label = "This is toggle switch",
          value = TRUE
        ),
        dbcRadioButton(
          id = "standalone-radio",
          label = "This is a radio button",
          value = TRUE
        )
      )
    ),
    htmlP(id = "standalone-radio-check-output")
  )
)


app$callback(
  output("standalone-radio-check-output", "children"),
  list(
    input("standalone-checkbox", "value"),
    input("standalone-switch", "value"),
    input("standalone-radio", "value")
  ),
  function(checkbox_checked, switch_checked, radio_checked) {
    check <- if (checkbox_checked == TRUE) "true" else "false"
    switch <- if (switch_checked == TRUE) "true" else "false"
    radio <- if (radio_checked == TRUE) "true" else "false"


    template <- "Selections:  Checkbox: %s, Toggle Switch: %s, Radio Button: %s"

    return(
      sprintf(template, check, switch, radio)
    )
  }
)
