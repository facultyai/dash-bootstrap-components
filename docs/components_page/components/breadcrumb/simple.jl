using DashBootstrapComponents

breadcrumb = dbc_breadcrumb(
    [
        dbc_breadcrumbitem("Docs", href="/docs"),
        dbc_breadcrumbitem("Components", href="/docs/components"),
        dbc_breadcrumbitem("Breadcrumb", href="/docs/components/breadcrumb")
    ],
)
