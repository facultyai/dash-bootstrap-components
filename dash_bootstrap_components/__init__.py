"""Bootstrap themed components for use in Plotly Dash"""
import os
import sys

from dash_bootstrap_components import icons  # noqa
from dash_bootstrap_components import themes  # noqa
from dash_bootstrap_components import _components
from dash_bootstrap_components._components import *  # noqa
from dash_bootstrap_components._table import _generate_table_from_df
from dash_bootstrap_components._version import __version__

_current_path = os.path.dirname(os.path.abspath(__file__))

METADATA_PATH = os.path.join(_current_path, "_components", "metadata.json")

_js_dist = [
    {
        "relative_package_path": (
            "_components/dash_bootstrap_components.min.js"
        ),
        "external_url": (
            "https://unpkg.com/dash-bootstrap-components@{}"
            "/dist/dash_bootstrap_components.min.js"
        ).format(__version__),
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
