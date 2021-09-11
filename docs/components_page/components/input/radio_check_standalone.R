library(dashBootstrapComponents)
library(dashHtmlComponents)

standalone_radio_check <- htmlDiv(
  list(
    htmlDiv(
      list(
        dbcCheckbox(
          id = "standalone-checkbox",
          label = "This is a checkbox",
          value = FALSE
        ),
        dbcSwitch(
          id = "standalone-switch",
          label = "This is a toggle switch",
          value = FALSE
        ),
        dbcRadioButton(
          id = "standalone-radio",
          label = "This is a radio button",
          value = FALSE
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
    check <- if (checkbox_checked) "True" else "False"
    switch <- if (switch_checked) "True" else "False"
    radio <- if (radio_checked) "True" else "False"


    template <- "Selections:  Checkbox: %s, Toggle Switch: %s, Radio Button: %s"

    return(
      sprintf(template, check, switch, radio)
    )
  }
)
