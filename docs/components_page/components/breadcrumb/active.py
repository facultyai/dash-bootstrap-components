import dash_bootstrap_components as dbc
import dash_html_components as html

breadcrumb = html.Div(
    [
        dbc.Breadcrumb(
            [
                dbc.BreadcrumbItem("Docs", href="/docs", active="exact"),
                dbc.BreadcrumbItem(
                    "Components", href="/docs/components", active="exact"
                ),
                dbc.BreadcrumbItem(
                    "Breadcrumb",
                    href="/docs/components/breadcrumb",
                    active="exact",
                ),
            ],
        ),
        dbc.Breadcrumb(
            [
                dbc.BreadcrumbItem("Docs", href="/docs", active="partial"),
                dbc.BreadcrumbItem(
                    "Components", href="/docs/components", active="partial"
                ),
                dbc.BreadcrumbItem(
                    "Breadcrumb",
                    href="/docs/components/breadcrumb",
                    active="partial",
                ),
            ],
        ),
        dbc.Breadcrumb(
            [
                dbc.BreadcrumbItem("Docs", href="/docs"),
                dbc.BreadcrumbItem(
                    "Components", href="/docs/components", active=True
                ),
                dbc.BreadcrumbItem(
                    "Breadcrumb", href="/docs/components/breadcrumb"
                ),
            ],
        ),
    ]
)
