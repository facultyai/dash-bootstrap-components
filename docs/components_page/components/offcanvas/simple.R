library(dashBootstrapComponents)
library(dashHtmlComponents)

offcanvas <- htmlDiv(
    list(
        dbcButton("Open Offcanvas", id="open-offcanvas", n_clicks=0),
        dbcOffcanvas(
            list(
                dbcOffcanvasHeader(title="Header"),
                dbcOffcanvasBody(
                    "This is the content of the Offcanvas. "
                    "Close it by clicking on the close button, or "
                    "the backdrop."
                ),
            ),
            id="offcanvas",
            is_open=FALSE,
            placement="end",
        ),
    )
)


app$callback(
    output("offcanvas", "is_open"),
    list(
        input("open-offcanvas", "n_clicks"),
        state("offcanvas", "is_open")
    ),
    function(n1, is_open) {
    if (n1) {
        return(!is_open)
    }
    return(is_open)
    }
)