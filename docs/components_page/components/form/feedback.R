library(dashBootstrapComponents)
library(dashHtmlComponents)

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
