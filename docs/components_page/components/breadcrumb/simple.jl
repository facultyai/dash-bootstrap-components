using DashBootstrapComponents

breadcrumb = dbc_breadcrumb(
    items = [
        Dict("label" => "Docs", "href" => "/docs", "external_link" => true),
        Dict(
            "label" => "Components",
            "href" => "/docs/components",
            "external_link" => true,
        ),
        Dict("label" => "Breadcrumb", "active" => true),
    ],
)
