from pathlib import Path

import markdown
from markdown.extensions.fenced_code import FencedBlockPreprocessor

# highlightJS expects the class "language-*" but markdown default is "*"
FencedBlockPreprocessor.LANG_TAG = ' class="language-%s"'

CONTENT = Path(__file__).parent / "content" / "docs"
DEST = Path(__file__).parent / "templates" / "docs"
HTML_TEMPLATE = """{% from "macros.html" import navbar %}
{% extends "base.html" %}
{% block header %}{{ navbar("docs") }}{% endblock %}
{% block content %}
<CONTENT>
{% endblock %}
"""

for path in CONTENT.glob("*.md"):
    md = markdown.Markdown(extensions=["fenced_code", "meta"])
    text = path.read_text()

    with open(DEST / path.name.replace(".md", ".html"), "w") as f:
        f.write(HTML_TEMPLATE.replace("<CONTENT>", md.convert(text)))
