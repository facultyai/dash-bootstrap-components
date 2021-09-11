import re
from pathlib import Path

import dash_bootstrap_components as dbc
import markdown
from dash import dcc, html

from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)

__all__ = ["parse"]

HERE = Path(__file__).parent

HEADER_PATTERN = re.compile(r"---.*---", flags=re.DOTALL)
SPLIT_PATTERN = re.compile(r"{{.*}}")
EXAMPLE_DOC_PATTERN = re.compile(r"{{(.*)}}")

# To format the docstrings
VERBATIM_PATTERN = re.compile(r"`((\\\[)((.|\n)*?)(\\]))`")
LINK_PATTERN = re.compile(r"\\\[([\w\.\-:\/]+)\\\]\(([\w\.\-:#\/]+)\)")
PROP_OPTIONAL_DEFAULT_PATTERN = re.compile(r"""default (.*)\)""")
PROP_TYPE_PATTERN = re.compile(r"""(\s*- \w+?\s*\()([^;]*);""")
PROP_NAME_PATTERN = re.compile(r"""(\n- )(\w+?) \(""")
NESTED_PROP_NAME_PATTERN = re.compile(r"""(\n\s+- )(\w+?) \(""")


def parse(app, markdown_path, extra_env_vars=None):
    extra_env_vars = extra_env_vars or {}
    raw = (HERE / markdown_path).read_text()

    # we use the markdown package to extract metadata
    md = markdown.Markdown(extensions=["meta"])
    md.convert(raw)
    meta = md.Meta

    content = [
        html.H1(meta["title"][0]),
        html.Div(dcc.Markdown(meta["lead"][0]), className="lead"),
    ]

    raw = HEADER_PATTERN.sub("", raw).strip()

    markdown_blocks = SPLIT_PATTERN.split(raw)
    markdown_blocks = [
        dcc.Markdown(block.strip()) for block in markdown_blocks
    ]

    examples_docs = EXAMPLE_DOC_PATTERN.findall(raw)
    examples_docs = [
        _parse_block(block, app, extra_env_vars) for block in examples_docs
    ]

    content.extend(_interleave(markdown_blocks, examples_docs))
    return html.Div(content, key=str(markdown_path))


def _parse_block(block, app, extra_env_vars):
    type_, data = block.split(":", 1)
    if type_ == "example":
        return _parse_example(data, app, extra_env_vars)
    elif type_ == "apidoc":
        _, filename = data.rsplit("/", 1)
        component_name = filename[:-3]
        return component_reference(component_name)
    elif type_ == "code-example":
        return _parse_code_example(data)
    raise ValueError("Unable to parse block.")


def _parse_example(data, app, extra_env_vars):
    source_path, obj = data.split(":")
    py_source = (HERE / source_path).read_text().strip()
    r_source = _safe_load_source(source_path, "R")
    jl_source = _safe_load_source(source_path, "jl")

    example = load_source_with_environment(
        py_source, obj, {"app": app, **extra_env_vars}
    )
    return ExampleContainer(example, py_source, r_source, jl_source)


def _safe_load_source(source_path, ext):
    source_path = Path(source_path)
    try:
        return (
            (HERE / source_path.parent / f"{source_path.stem}.{ext}")
            .read_text()
            .strip()
        )
    except FileNotFoundError:
        return None


def _parse_code_example(filename):
    source_path = HERE / filename
    py_source = (HERE / source_path).read_text().strip()
    r_source = _safe_load_source(source_path, "R")
    jl_source = _safe_load_source(source_path, "jl")

    return html.Div(
        HighlightedSource(
            py_source, r_source, jl_source, className="pb-0 card-header"
        ),
        className="border source-container rounded",
    )


def _interleave(l1, l2):
    n = len(l2)
    out = []
    for x in zip(l1[:n], l2):
        out.extend(x)
    out.extend(l1[n:])
    return out


def component_reference(component_name):
    component = getattr(dbc, component_name)
    component_doc = component.__doc__

    return_div = [
        dcc.Markdown("### Keyword arguments for {}".format(component_name))
    ]

    docs = component_doc.split("Keyword arguments:")[-1]

    docs = re.sub(VERBATIM_PATTERN, r"`[\3]`", docs)
    # format links
    docs = re.sub(LINK_PATTERN, r"[\1](\2)", docs)

    # formats the prop defaults
    docs = re.sub(PROP_OPTIONAL_DEFAULT_PATTERN, r"default `\1`)", docs)

    # formats the prop type
    docs = re.sub(PROP_TYPE_PATTERN, r"\1*\2*;", docs)

    # formats the prop name on first level only
    docs = re.sub(PROP_NAME_PATTERN, r"\1**`\2`** (", docs)

    # formats keys of nested dicts
    docs = re.sub(NESTED_PROP_NAME_PATTERN, r"\1**`\2`** (", docs)

    # removes a level of nesting
    docs = docs.replace("\n-", "\n")

    return_div.append(dcc.Markdown(docs))
    return html.Div(return_div, className="reference")
