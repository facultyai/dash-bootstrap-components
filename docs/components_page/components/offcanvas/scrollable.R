library(dashBootstrapComponents)
library(dashHtmlComponents)

LOREM <- paste(
  readLines(
    "https://raw.githubusercontent.com/facultyai/dash-bootstrap-components/main/docs/components_page/components/modal/lorem.txt",
  ),
  collapse="\n"
)

offcanvas <- htmlDiv(
    list(
        dbcButton(
            "Open scrollable offcanvas",
            id="open-offcanvas-scrollable",
            n_clicks=0,
        ),
        htmlDiv(list(htmlP(LOREM) for _ in range(10))),  # FIXME
        dbcOffcanvas(
            list(
                dbcOffcanvasHeader(title="Scrollable Offcanvas"),
                dbcOffcanvasBody(
                    list(
                        htmlDiv(
                            "The contents on the main page are now scrollable."
                        ),
                        dbcButton(
                            "Close",
                            id="close-offcanvas-scrollable",
                            class_name="ml-auto",
                            n_clicks=0,
                        ),
                    )
                ),
            ),
            id="offcanvas-scrollable",
            is_open=FALSE,
            placement="end",
            scrollable=TRUE,
        ),
    )
)


app$callback(
    output("offcanvas-scrollable", "is_open"),
    list(
        input("open-offcanvas-scrollable", "n_clicks"),
        input("close-offcanvas-scrollable", "n_clicks"),
        state("offcanvas-scrollable", "is_open")
    ),
    function(n1, n2, is_open) {
        if (n1 | n2) {
            return(!is_open)
        }
        return(is_open)
    }
)
