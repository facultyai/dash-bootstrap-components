# TODO - CLIENTSIDE callback


library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

#---------- clorpicker

colorpicker <- dbcFormGroup(
  list(
    dbcLabel(list("Select a ", htmlSpan("color", id = "color"))),
    dbcInput(
      type = "color",
      id = "colorpicker",
      value = "#000000",
      style = list(width = 75, height =  50),
    )
  )
)
#
# app$callback(
#   output("color", "style"),
#   list(input("colorpicker", "value")),
#   clientsideFunction(
#     function(color) {
#       return(list(color = color))
#     }
#   )
# )

# Regular Dash callback
app$callback(
  output("color", "style"),
  list(input("colorpicker", "value")),
  function(color) {
    return(list(color = color))
  }
)

#-------------- number_input


input_number <- htmlDiv(
  list(
    htmlP("Type a number outside the range 0-10"),
    dbcInput(type = "number", min = 0, max = 10, step = 1)
  ),
  id = "styled-numeric-input",
)

#-------------- radio_check

radioitems <- dbcFormGroup(
  list(
    dbcLabel("Choose one"),
    dbcRadioItems(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2),
        list(label =  "Disabled option", value = 3, disabled = TRUE)
      ),
      value = 1,
      id = "radioitems-input"
    )
  )
)


checklist <- dbcFormGroup(
  list(
    dbcLabel("Choose a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2),
        list(label =  "Disabled option", value = 3, disabled = TRUE)
      ),
      value = list(1),
      id = "checklist-input"
    )
  )
)

switches <- dbcFormGroup(
  list(
    dbcLabel("Toggle a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2),
        list(label =  "Disabled option", value = 3, disabled = TRUE)
      ),
      value = list(1),
      id = "switches-input",
      switch = TRUE,
    )
  )
)

inputs_radio_check <- htmlDiv(
  list(
    dbcForm(list(radioitems, checklist, switches)),
    htmlP(id = "radioitems-checklist-output")
  )
)


app$callback(
  output("radioitems-checklist-output", "children"),
  list(
    input("radioitems-input", "value"),
    input("checklist-input", "value"),
    input("switches-input", "value")
  ),
  function(radio_items_value, checklist_value, switches_value) {
    template <- "Radio button # %d,  %d checklist item(s) and %d switch(es) selected."
    n_checkboxes <- length(checklist_value)
    n_switches <- length(switches_value)

    return(
      sprintf(template, radio_items_value, n_checkboxes, n_switches)
    )
  }
)

#---------------radio_check_inline

inline_radioitems <- dbcFormGroup(
  list(
    dbcLabel("Choose one"),
    dbcRadioItems(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2)
      ),
      value = 1,
      id = "radioitems-inline-input",
      inline = TRUE,
    )
  )
)

inline_checklist <- dbcFormGroup(
  list(
    dbcLabel("Choose a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2)
      ),
      value = list(1),
      id = "checklist-inline-input",
      inline = TRUE
    )
  )
)

inline_switches <- dbcFormGroup(
  list(
    dbcLabel("Toggle a bunch"),
    dbcChecklist(
      options = list(
        list(label =  "Option 1", value = 1),
        list(label =  "Option 2", value = 2)
      ),
      value = list(1),
      id = "switches-inline-input",
      inline = TRUE,
      switch = TRUE
    )
  )
)

inputs_inline <- dbcForm(
    list(inline_radioitems, inline_checklist, inline_switches)
)


#--------------- radio_check_standalone


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


# ---------- select

input_select <- dbcSelect(
  id = "select",
  options = list(
    list(label =  "Option 1", value = 1),
    list(label =  "Option 2", value = 2),
    list(label =  "Disabled option", value = 3, disabled = TRUE)
  )
)


# ----------- selected_styles

#checklist <-
input_checklist <- dbcChecklist(
  id = "checklist-selected-style",
  options = list(
    list(label =  "Option 1", value = 1),
    list(label =  "Option 2", value = 2),
    list(label =  "Option 3", value = 3)
  ),
  labelCheckedStyle = list(color = "red")
)

# ----------- simple

#text_input <-
input_simple <- htmlDiv(
  list(
    dbcInput(id = "input", placeholder = "Type something...", type = "text"),
    htmlBr(),
    htmlP(id = "output")
  )
)


app$callback(
  output("output", "children"),
  list(input("input", "value")),
  function(value) {
    return(value)
  }
)

# ---------- size


inputs_size <- htmlDiv(
  list(
    dbcInput(
      placeholder = "A large input...", bs_size = "lg", className = "mb-3"
    ),
    dbcInput(
      placeholder = "A medium input...", bs_size = "md", className = "mb-3"
    ),
    dbcInput(placeholder = "A small input...", bs_size = "sm")
  )
)

# ---------- text_label


input_text <- dbcFormGroup(
  list(
    dbcLabel("Text"),
    dbcInput(placeholder = "Input goes here...", type = "text"),
    dbcFormText("Type something in the box above")
  )
)

#  -----------textarea

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

# ------------ valication


inputs_validation <- htmlDiv(
  list(
    dbcInput(placeholder = "Valid input...", valid = TRUE, className = "mb-3"),
    dbcInput(placeholder = "Invalid input...", invalid = TRUE)
  )
)

# -------------


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Input - Simple example"),
      input_simple,
      htmlHr(),
      htmlH2("Input - Number"),
      input_number,
      htmlHr(),
      htmlH2("Input - Labels and text"),
      input_text,
      htmlHr(),
      htmlH2("Input - Size"),
      inputs_size,
      htmlHr(),
      htmlH2("Input - Validation"),
      inputs_validation,
      htmlHr(),
      htmlH2("Input - textarea"),
      input_textareas,
      htmlHr(),
      htmlH2("Input - Select"),
      input_select,
      htmlHr(),
      htmlH2("Input - Radio and Checklist"),
      inputs_radio_check,
      htmlHr(),
      htmlH2("Input - Radio and Checklist -Inline"),
      inputs_inline,
      htmlHr(),
      htmlH2("Input -Checked item styles"),
      input_checklist,
      htmlHr(),
      htmlH2("Input - Stand alone Radio buttons and Checkbox"),
      standalone_radio_check,
      htmlH2("Input - colorpicker"),
      colorpicker
    ),
    className = "p-5"
  )
)

app$run_server(showcase = TRUE)
