library(dashBootstrapComponents)
library(dashHtmlComponents)

breadcrumb <- htmlDiv(
    list(
        dbcBreadcrumb(
            list(
                dbcBreadcrumbItem("Docs", href="/docs/", active="exact"),
                dbcBreadcrumbItem(
                    "Components", href="/docs/components/", active="exact"
                ),
                dbcBreadcrumbItem(
                    "Breadcrumb",
                    href="/docs/components/breadcrumb/",
                    active="exact",
                )
            )
        ),
        dbcBreadcrumb(
            list(
                dbcBreadcrumbItem("Docs", href="/docs/", active="partial"),
                dbcBreadcrumbItem(
                    "Components", href="/docs/components/", active="partial"
                ),
                dbcBreadcrumbItem(
                    "Breadcrumb",
                    href="/docs/components/breadcrumb/",
                    active="partial",
                )
            )
        ),
        dbcBreadcrumb(
            list(
                dbcBreadcrumbItem("Docs", href="/docs/"),
                dbcBreadcrumbItem(
                    "Components", href="/docs/components/", active=TRUE
                ),
                dbcBreadcrumbItem(
                    "Breadcrumb", href="/docs/components/breadcrumb/"
                )
            )
        )
    )
)
