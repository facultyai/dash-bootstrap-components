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


class MarkdownParser:
    def __init__(self, app):
        self._app = app
        self.header_pattern = re.compile(r"---.*---", flags=re.DOTALL)
        self.split_pattern = re.compile(r"{{.*}}")
        self.example_doc_pattern = re.compile(r"{{(.*)}}")

    def parse(self, markdown_path, extra_env_vars=None):
        self._extra_env_vars = extra_env_vars or {}
        raw = (HERE / markdown_path).read_text()

        # we use the markdown package to extract metadata
        md = markdown.Markdown(extensions=["meta"])
        md.convert(raw)
        meta = md.Meta

        content = [
            html.H2(meta["title"][0], className="display-4"),
            html.Div(dcc.Markdown(meta["lead"][0]), className="lead"),
        ]

        raw = self.header_pattern.sub("", raw).strip()

        markdown_blocks = self.split_pattern.split(raw)
        markdown_blocks = [
            dcc.Markdown(block.strip()) for block in markdown_blocks
        ]

        examples_docs = self.example_doc_pattern.findall(raw)
        examples_docs = [self._parse_block(block) for block in examples_docs]

        content.extend(self._interleave(markdown_blocks, examples_docs))
        return html.Div(content, key=str(markdown_path))

    def _parse_block(self, block):
        type_, data = block.split(":", 1)
        if type_ == "example":
            return self._parse_example(data)
        elif type_ == "apidoc":
            return self._parse_doc(data)
        elif type_ == "code-example":
            return self._parse_code_example(data)
        raise ValueError("Unable to parse block.")

    def _parse_example(self, data):
        source_path, obj = data.split(":")
        source = (HERE / source_path).read_text().strip()
        example = load_source_with_environment(
            source, obj, {"app": self._app, **self._extra_env_vars}
        )
        return html.Div([ExampleContainer(example), HighlightedSource(source)])

    @staticmethod
    def _parse_code_example(data):
        source_path, language = data.split(":")
        source = (HERE / source_path).read_text().strip()
        return html.Div(
            dcc.Markdown(f"```{language}\n{source}\n```"),
            className="source-container",
        )

    @staticmethod
    def _parse_doc(data):
        _, filename = data.rsplit("/", 1)
        return ApiDoc(
            get_component_metadata(data), component_name=filename[:-3]
        )

    @staticmethod
    def _interleave(l1, l2):
        n = len(l2)
        out = []
        for x in zip(l1[:n], l2):
            out.extend(x)
        out.extend(l1[n:])
        return out
