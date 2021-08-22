import dash_bootstrap_components as dbc

breadcrumb = dbc.Breadcrumb(
    [
        dbc.BreadcrumbItem("Docs", href="/docs/", active="exact"),
        dbc.BreadcrumbItem(
            "Components", href="/docs/components/", active="exact"
        ),
        dbc.BreadcrumbItem(
            "Breadcrumb", href="/docs/components/breadcrumb/", active="exact"
        ),
    ],
)
