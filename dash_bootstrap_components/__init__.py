"""Bootstrap themed components for use in Plotly Dash"""

from dash_bootstrap_components import _components, icons, themes
from dash_bootstrap_components._components import *  # noqa
from dash_bootstrap_components._components import Table
from dash_bootstrap_components._table import _generate_table_from_df
from dash_bootstrap_components._version import __version__

__all__ = _components.__all__ + ["icons", "themes"]

_js_dist = [
    {
        "relative_package_path": ("_components/dash_bootstrap_components.min.js"),
        "external_url": (
            f"https://unpkg.com/dash-bootstrap-components@{__version__}"
            "/dist/dash_bootstrap_components.min.js"
        ),
        "namespace": "dash_bootstrap_components",
    }
]

_css_dist = []


for _component_name in _components.__all__:
    _component = getattr(_components, _component_name)
    _component._js_dist = _js_dist
    _component._css_dist = _css_dist


Table.from_dataframe = classmethod(_generate_table_from_df)


def __getattr__(name):
    if name in [
        "CardColumns",
        "CardDeck",
        "FormGroup",
        "InputGroupAddon",
        "Jumbotron",
        "ListGroupItemHeading",
        "ListGroupItemText",
    ]:
        raise AttributeError(
            f"{name} was deprecated in dash-bootstrap-components version "
            f"1.0.0. You are using {__version__}. For more details please "
            "see the migration guide: "
            "https://github.com/dbc-team/dash-bootstrap-components/blob/"
            "6da4a97f940483deb3dc9c815ef4c7e450ff0be7/docs/content/"
            "migration-guide.md"
        )
    raise AttributeError(f"module {__name__!r} has no attribute {name!r}")


def __dir__():
    return __all__
