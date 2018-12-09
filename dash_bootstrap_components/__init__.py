import os
import sys

import dash

from . import themes  # noqa
from ._version import __version__  # noqa
from . import components

_js_dist = [
    {
        "relative_package_path": "dash_bootstrap_components.min.js",
        "namespace": "dash_bootstrap_components",
    }
]

_css_dist = []


for _component_name in components.__all__:
    _component = getattr(components, _component_name)
    _component._js_dist = _js_dist
    _component._css_dist = _css_dist


from .components import *  # noqa
