library(dashBootstrapComponents)
library(dashHtmlComponents)

offcanvas <- htmlDiv(
    list(
        dbcButton(
            "Open scrollable offcanvas",
            id="open-offcanvas-scrollable",
            n_clicks=0,
        ),
        dbcOffcanvas(
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
            id="offcanvas-scrollable",
            scrollable=TRUE,
            title="Scrollable Offcanvas"
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
        if (n1 > 0 | n2 > 0) {
            return(!is_open)
        }
        return(is_open)
    }
)
