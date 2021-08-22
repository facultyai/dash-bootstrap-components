using DashBootstrapComponents, DashHtmlComponents

breadcrumb = html_div(
    [
        dbc_breadcrumb(
            [
                dbc_breadcrumbitem("Docs", href="/docs/", active="exact"),
                dbc_breadcrumbitem(
                    "Components", href="/docs/components/", active="exact"
                ),
                dbc_breadcrumbitem(
                    "Breadcrumb",
                    href="/docs/components/breadcrumb/",
                    active="exact",
                ),
            ],
        ),
        dbc_breadcrumb(
            [
                dbc_breadcrumbitem("Docs", href="/docs/", active="partial"),
                dbc_breadcrumbitem(
                    "Components", href="/docs/components/", active="partial"
                ),
                dbc_breadcrumbitem(
                    "Breadcrumb",
                    href="/docs/components/breadcrumb/",
                    active="partial",
                ),
            ],
        ),
        dbc_breadcrumb(
            [
                dbc_breadcrumbitem("Docs", href="/docs/"),
                dbc_breadcrumbitem(
                    "Components", href="/docs/components/", active=true
                ),
                dbc_breadcrumbitem(
                    "Breadcrumb", href="/docs/components/breadcrumb/"
                ),
            ],
        ),
    ]
)
