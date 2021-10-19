library(dashBootstrapComponents)
library(dashHtmlComponents)

email_input <- htmlDiv(
  list(
    dbcLabel("Email"),
    dbcInput(id = "email-input", type = "email", value = ""),
    dbcFormText("We only accept gmail..."),
    dbcFormFeedback(
      "That looks like a gmail address :-)",
      type = "valid"
    ),
    dbcFormFeedback(
      "Sorry, we only accept gmail for some reason...",
      type = "invalid"
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
