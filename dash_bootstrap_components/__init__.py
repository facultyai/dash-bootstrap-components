"""Bootstrap themed components for use in Plotly Dash"""
import os
import sys

from dash_bootstrap_components import _components, icons, themes
from dash_bootstrap_components._components import *  # noqa
from dash_bootstrap_components._table import _generate_table_from_df
from dash_bootstrap_components._version import __version__

__all__ = _components.__all__ + ["icons", "themes"]

_current_path = os.path.dirname(os.path.abspath(__file__))
_METADATA_PATH = os.path.join(_current_path, "_components", "metadata.json")

_js_dist = [
    {
        "relative_package_path": (
            "_components/dash_bootstrap_components.min.js"
        ),
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


sys.modules[__name__].Table.from_dataframe = classmethod(
    _generate_table_from_df
)


# TODO: when Python 3.6 support is dropped we can simplify this with PEP 562
# https://www.python.org/dev/peps/pep-0562/
class _V1DeprecationWarningWrapper:
    def __init__(self, wrapped, deprecated):
        self.wrapped = wrapped
        self.deprecated = deprecated

    def __getattr__(self, name):
        if name in self.deprecated:
            raise AttributeError(
                f"{name} was deprecated in dash-bootstrap-components version "
                f"1.0.0. You are using {__version__}. For more details please "
                "see the migration guide: "
                "https://dash-bootstrap-components.opensource.faculty.ai/"
                "migration-guide/"
            )
        return getattr(self.wrapped, name)

    def __dir__(self):
        # required for autocomplete. filter out os, and sys imports
        return [
            item
            for item in self.wrapped.__dir__()
            if item not in {"os", "sys"}
        ]


sys.modules[__name__] = _V1DeprecationWarningWrapper(
    sys.modules[__name__],
    [
        "CardColumns",
        "CardDeck",
        "FormGroup",
        "InputGroupAddon",
        "Jumbotron",
        "ListGroupItemHeading",
        "ListGroupItemText",
    ],
)
