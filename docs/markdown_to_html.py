from pathlib import Path

import markdown
from markdown.extensions.fenced_code import FencedBlockPreprocessor

# highlightJS expects the class "language-*" but markdown default is "*"
FencedBlockPreprocessor.LANG_TAG = ' class="language-%s"'

CONTENT = Path(__file__).parent / "content"
DEST = Path(__file__).parent / "templates" / "generated"

DOCS_HTML_TEMPLATE = """{% extends "docs.html" %}
{% block title %}<title><TITLE></title>{% endblock %}
{% block content %}<CONTENT>{% endblock %}
"""

CHANGELOG_HTML_TEMPLATE = """{% extends "changelog.html" %}
{% block title %}<title><TITLE></title>{% endblock %}
{% block content %}<CONTENT>{% endblock %}
"""


def convert_all_markdown_files():
    for path in CONTENT.glob("docs/*.md"):
        template = template_from_markdown(path, title_suffix=" - dbc docs")
        with open(DEST / "docs" / path.name.replace(".md", ".html"), "w") as f:
            f.write(template)

    for path in CONTENT.glob("*.md"):
        template = template_from_markdown(
            path, template=CHANGELOG_HTML_TEMPLATE
        )
        with open(DEST / path.name.replace(".md", ".html"), "w") as f:
            f.write(template)


def template_from_markdown(path, title_suffix="", template=DOCS_HTML_TEMPLATE):
    md = markdown.Markdown(extensions=["fenced_code", "meta"])
    text = path.read_text()
    template = template.replace("<CONTENT>", md.convert(text))
    return template.replace("<TITLE>", f"{md.Meta['title'][0]} - dbc docs")


if __name__ == "__main__":
    convert_all_markdown_files()
