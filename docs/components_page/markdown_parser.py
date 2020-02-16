import re
from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html
import markdown

from .api_doc import ApiDoc
from .helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from .metadata import get_component_metadata

HERE = Path(__file__).parent

HEADER_PATTERN = re.compile(r"---.*---", flags=re.DOTALL)
SPLIT_PATTERN = re.compile(r"{{.*}}")
EXAMPLE_DOC_PATTERN = re.compile(r"{{(.*)}}")


def parse(markdown_path):
    raw = (HERE / markdown_path).read_text()

    # we use the markdown package to extract metadata
    md = markdown.Markdown(extensions=["meta"])
    md.convert(raw)
    meta = md.Meta

    content = [
        html.H2(meta["title"][0], className="display-4"),
        html.Div(dcc.Markdown(meta["lead"][0]), className="lead"),
    ]

    raw = HEADER_PATTERN.sub("", raw).strip()

    markdown_blocks = SPLIT_PATTERN.split(raw)
    markdown_blocks = [
        dcc.Markdown(block.strip()) for block in markdown_blocks
    ]

    examples_docs = EXAMPLE_DOC_PATTERN.findall(raw)
    examples_docs = [_parse_exdoc(block) for block in examples_docs]

    content.extend(_interleave(markdown_blocks, examples_docs))
    return content


def _parse_exdoc(block):
    type_, data = block.split(":", 1)
    if type_ == "example":
        return _parse_example(data)
    elif type_ == "apidoc":
        return _parse_doc(data)
    raise ValueError("Unable to parse block.")


def _parse_example(data):
    source_path, obj = data.split(":")
    source = (HERE / source_path).read_text().strip()
    example = load_source_with_environment(source, obj)
    return html.Div(
        [ExampleContainer(example), HighlightedSource(source)]
    )


def _parse_doc(data):
    return ApiDoc(get_component_metadata(data))


def _interleave(l1, l2):
    n = len(l2)
    out = []
    for x in zip(l1[:n], l2):
        out.extend(x)
    out.extend(l1[n:])
    return out
