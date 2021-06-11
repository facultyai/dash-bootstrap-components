from pathlib import Path


def py_source_to_app(py_source):
    """
    Create a Dash app from a string defining the app.
    """
    g = {}
    exec(py_source, g)
    return g["app"]


def drop_keys(d):
    """
    Layout payload for R apps has a slightly different structure. We drop some
    keys for parity.
    """
    if isinstance(d, dict):
        return {
            k: drop_keys(v)
            for k, v in d.items()
            if k not in ["propNames", "package"]
        }
    elif isinstance(d, list):
        return [drop_keys(x) for x in d]
    return d


def clean_path(path):
    if path.startswith("components/"):
        path = path[11:]
    return Path(path)
