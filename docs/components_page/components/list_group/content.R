library(dashBootstrapComponents)

list_group <- dbcListGroup(
  list(
    dbcListGroupItem(
      list(
        htmlDiv(
            list(
                htmlH5("This item has a heading", class_name="mb-1"),
                htmlSmall("Yay!", class_name="text-success")
            ),
            class_name="d-flex w-100 justify-content-between"
        ),
        htmlP("And some text underneath", class_name="mb-1"),
        htmlSmall("Plus some small print.", class_name="text-muted")
      )
    ),
    dbcListGroupItem(
      list(
        htmlDiv(
              list(
                  htmlH5(
                      "This item also has a heading", class_name="mb-1"
                  ),
                  htmlSmall("Ok!", class_name="text-warning")
              ),
              class_name="d-flex w-100 justify-content-between"
          ),
          htmlP("And some more text underneath too", class_name="mb-1"),
          htmlSmall(
              "Plus even more small print.", class_name="text-muted"
          )
      )
    )
  )
)
