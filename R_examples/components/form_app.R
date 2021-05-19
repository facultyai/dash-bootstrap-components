
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)
library(dashCoreComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)



dropdown <-  dbcFormGroup(
  list(
    dbcLabel("Dropdown", html_for = "dropdown"),
    dccDropdown(
      id = "dropdown",
      options = list(
        list(label = "Option 1", value =  1),
        list(label = "Option 1", value =  1)
      )
    )
  )
)

slider <- dbcFormGroup(
  list(
    dbcLabel("Slider", html_for = "slider"),
    dccSlider(id = "slider", min = 0, max = 10, step = 0.5, value = 3)
  )
)

range_slider <- dbcFormGroup(
  list(
    dbcLabel("RangeSlider", html_for = "range-slider"),
    dccRangeSlider(id = "range-slider", min = 0, max = 10, value = list(3, 7))
  )
)

form_dcc <- dbcForm(list(dropdown, slider, range_slider))

#---------------

form_feedback <- htmlDiv(
  list(
    dbcFormGroup(
      list(
        dbcLabel("Email"),
        dbcInput(id = "email-input", type = "email", value = ""),
        dbcFormText("We only accept gmail..."),
        dbcFormFeedback(
            "That looks like a gmail address :-)", valid = TRUE
        ),
        dbcFormFeedback(
            "Sorry, we only accept gmail for some reason...",
            valid = FALSE
        )
      )
    )
  )
)


# --- Callbacks --- #
app$callback(
  list(
    output("email-input", "valid"),
    output("email-input", "invalid")
  ),
  list(
    input("email-input", "value")
  ),
  function(text) {
    if (text != "") {
      is_gmail <- endsWith(text, "@gmail.com")
      return(list(is_gmail, !is_gmail))
    }
    return(list(FALSE, FALSE))
  }
)

#--------------

form_grid <- dbcRow(
  list(
    dbcCol(
      dbcFormGroup(
        list(
          dbcLabel("Email", html_for = "example-email-grid"),
          dbcInput(
            type = "email",
            id = "example-email-grid",
            placeholder = "Enter email"
          )
        )
      ),
      width = 6,
    ),
    dbcCol(
      dbcFormGroup(
        list(
          dbcLabel("Password", html_for = "example-password-grid"),
          dbcInput(
            type = "password",
            id = "example-password-grid",
            placeholder = "Enter password"
          )
        )
      ),
      width = 6
    )
  ),
  form = TRUE
)

#--------------


form_inline <- dbcForm(
  list(
    dbcFormGroup(
      list(
        dbcLabel("Email", className = "mr-2"),
        dbcInput(
          type = "email",
          placeholder = "Enter email"
        )
      ),
      className = "mr-3"
    ),
    dbcFormGroup(
      list(
        dbcLabel("Password", className = "mr-2"),
        dbcInput(
          type = "password",
          placeholder = "Enter password"
        )
      ),
      className = "mr-3"
    ),
    dbcButton("Submit", color = "primary")
  ),
  inline =  TRUE
)

#--------------

email_input <- dbcFormGroup(
  list(
    dbcLabel("Email", html_for = "example-email-row", width = 2),
    dbcCol(
      dbcInput(
        type = "email", id = "example-email-row", placeholder = "Enter email"
      ),
      width = 10
    )
  ),
  row = TRUE
)

password_input <- dbcFormGroup(
  list(
    dbcLabel("Password", html_for = "example-password-row", width = 2),
    dbcCol(
      dbcInput(
          type = "password",
          id = "example-password-row",
          placeholder = "Enter password",
      ),
      width = 10
    )
  ),
  row = TRUE
)

radios_input <- dbcFormGroup(
  list(
    dbcLabel("Radios", html_for = "example-radios-row", width = 2),
    dbcCol(
      dbcRadioItems(
        id = "example-radios-row",
        options = list(
          list(label =  "First radio", value = 1),
          list(label =  "Second radio", value = 2),
          list(label =  "Third disabled radio",
               value = 3,
               disabled = TRUE
          )
        )
      ),
      width = 10
    )
  ),
  row = TRUE
)

form_row <- dbcForm(list(email_input, password_input, radios_input))

#--------------


email_input_simple <- dbcFormGroup(
  list(
    dbcLabel("Email", html_for = "example-email"),
    dbcInput(type = "email", id = "example-email", placeholder = "Enter email"),
    dbcFormText(
      "Are you on email? You simply have to be these days",
      color = "secondary",
    )
  )
)

password_input_simple <- dbcFormGroup(
  list(
    dbcLabel("Password", html_for = "example-password"),
    dbcInput(
        type = "password",
        id = "example-password",
        placeholder = "Enter password",
    ),
    dbcFormText(
        "A password stops mean people taking your stuff",
        color = "secondary"
    )
  )
)

form_simple <- dbcForm(list(email_input_simple, password_input_simple))


#--------------


app$layout(
  dbcContainer(
    list(
      htmlH1("Dash Bootstrap Components Documentation for R"),
      htmlHr(),
      htmlH2("Form Simple example"),
      form_simple,
      htmlHr(),
      htmlH2("Form - Horizontal"),
      form_row,
      htmlHr(),
      htmlH2("Form - Using grid layout"),
      form_grid,
      htmlHr(),
      htmlH2("Form - Inline"),
      form_inline,
      htmlHr(),
      htmlH2("Form - feedback"),
      form_feedback,
      htmlHr(),
      htmlH2("Form - Dash Core Components"),
      form_dcc
    ),
  className = "p-5")
)

app$run_server(showcase = TRUE)
