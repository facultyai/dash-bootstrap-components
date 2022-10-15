library(dashBootstrapComponents)

# `options` is provided as an array of dictionaries
checklist <- div(
  list(
        dbcChecklist(
            list(
                list(label = "Option 1", value = 1),
                list(label = "Option B", value = 2),
                list(label = "Option III", value = 3),
                list(label = "4", value = 4)
            ),
            list(3),
            id="shorthand-checklist"
        )
    ),
    className="py-2"
)

# All items in this list will have the value the same as the label
select <- div(
    dbcSelect(
        list("Option 1", "Option B", "Option III", 4),
        "Option III",
        id="shorthand-select"
    ),
    className="py-2"
)

# `options` is provided as value: label pairs - value must be a string
radioitems <- div(
    list(
        dbcRadioItems(
            list(
                1 = "Option 1",
                2 = "Option B",
                3 = "Option III",
                4 = 4
            ),
            "3",
            id="shorthand-radio"
        )
    ),
    className="py-2"
)

short_hand <- div(
    list(
        dbcForm(list(checklist, select, radioitems)),
        htmlDiv(id="shorthand-output")
    )
)


app$callback(
    output("shorthand-output", "children"),
    list(
        input("shorthand-checklist", "value"),
        input("shorthand-select", "value"),
        input("shorthand-radio", "value")
    ),
    function(checklist_value, select_value, radio_items_value) {

        checklist <- paste(checklist_value, sep=", ")

        output <- list(
            p(sprintf("Checklist: [%s]", checklist)),
            p(sprintf("Selected: %s", select_value)),
            p(sprintf("Radio: %s", radio_items_value))
        )
        return(output)
    }
)
