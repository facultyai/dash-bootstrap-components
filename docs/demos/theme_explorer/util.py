import dash_bootstrap_components as dbc
from dash import html

DBC_DOCS = (
    "https://dash-bootstrap-components.opensource.faculty.ai/docs/components/"
)


def make_subheading(label, link):
    slug = label.replace(" ", "")

    heading = html.H2(
        html.Span(
            [
                label,
                html.A(
                    html.I(className="fas fa-book fa-xs ms-2"),
                    href=f"{DBC_DOCS}{link}",
                    target="_blank",
                    id=f"tooltip_target_{slug}",
                ),
            ],
        ),
    )

    return html.Div(
        [
            heading,
            dbc.Tooltip(
                f"See {label} documentation", target=f"tooltip_target_{slug}"
            ),
        ],
        className="mt-3",
    )
