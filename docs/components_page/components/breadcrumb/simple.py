import dash_bootstrap_components as dbc

breadcrumb = dbc.Breadcrumb(
    items=[
        {"label": "Docs", "href": "/docs", "external_link": True},
        {
            "label": "Components",
            "href": "/docs/components",
            "external_link": True,
        },
        {"label": "Breadcrumb", "active": True},
    ],
)
