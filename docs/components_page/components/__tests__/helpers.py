from pathlib import Path

from .wrappers import JL_WRAPPER, R_WRAPPER


def py_source_to_app(py_source, env):
    """
    Create a Dash app from a string defining the app.
    """
    env = env or {}
    # TODO: remove class_name modifiers
    exec(
        py_source.replace("class_name", "className").replace(
            "_className", "_class_name"
        ),
        env,
    )
    return env["app"]


def drop_keys(d):
    """
    Layout payload for R and Julia apps has a slightly different structure. We
    drop some keys for parity.
    """
    if isinstance(d, dict):
        return {
            k: drop_keys(v)
            for k, v in d.items()
            if k not in ["propNames", "package"]
            and v is not None
            and not (k == "children" and v == "")
        }
    elif isinstance(d, list):
        return [drop_keys(x) for x in d]
    return d


def clean_path(path):
    if path.startswith("components/"):
        path = path[11:]
    return Path(path)


def rename_variable(snippet_path, suffix, variable, assign_op="="):
    with snippet_path.open() as f:
        lines = f.read().split("\n")

    new_lines = []
    for line in lines:
        if line.startswith(f"{variable} {assign_op}"):
            line = line.replace(
                f"{variable} {assign_op}", f"{variable}__{suffix} {assign_op}"
            )
        new_lines.append(line)

    return "\n".join(new_lines)


def load_r_app(path, component_name, extra_args=""):
    snippet = path.read_text()
    if extra_args:
        snippet = f"{extra_args}\n{snippet}"
    return (
        R_WRAPPER.format(
            snippet=snippet,
            components=component_name,
            port=8050,
        )
        .replace("class_name", "className")
        .replace("_className", "_class_name")
    )  # TODO: remove this in future


def load_jl_app(path, component_name, extra_args=""):
    snippet = path.read_text()
    if extra_args:
        snippet = f"{extra_args}\n{snippet}"
    return (
        JL_WRAPPER.format(
            snippet=snippet,
            components=component_name,
            port=8050,
        )
        .replace("class_name", "className")
        .replace("_className", "_class_name")
    )  # TODO: remove this in future
