from pathlib import Path

import markdown
from markdown.extensions.fenced_code import FencedBlockPreprocessor

# highlightJS expects the class "language-*" but markdown default is "*"
FencedBlockPreprocessor.LANG_TAG = ' class="language-%s"'

CONTENT = Path(__file__).parent / "content" / "docs"
DEST = Path(__file__).parent / "templates" / "docs"

HTML_TEMPLATE = """{% from "macros/navbar.html" import navbar %}
{% extends "docs.html" %}
{% block title %}<title><TITLE></title>{% endblock %}
{% block header %}{{ navbar("docs") }}{% endblock %}
{% block content %}
<CONTENT>
{% endblock %}
"""


def convert_all_markdown_files():
    for path in CONTENT.glob("*.md"):
        md = markdown.Markdown(extensions=["fenced_code", "meta"])
        text = path.read_text()
        template = HTML_TEMPLATE.replace("<CONTENT>", md.convert(text))
        template = template.replace(
            "<TITLE>", f"{md.Meta['title'][0]} - dbc docs"
        )

        with open(DEST / path.name.replace(".md", ".html"), "w") as f:
            f.write(template)


if __name__ == "__main__":
    convert_all_markdown_files()
