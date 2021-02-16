import re
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
"""  # noqa

CHANGELOG_HTML_TEMPLATE = """{% extends "changelog.html" %}
{% block title %}<title><TITLE></title>{% endblock %}
{% block content %}<CONTENT>{% endblock %}
"""  # noqa

TAB_OUTER_TEMPLATE = """<div class="card mb-3">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs{classes}"{id_value} role="tablist">{tabs}</ul>
  </div>
  <div class="card-body tab-content">{tab_panes}</div>
</div>
"""  # noqa

TAB_TEMPLATE = """<li class="nav-item" role="presentation">
  <a class="nav-link{2}" id="{0}-tab" data-toggle="tab" href="#{0}" role="tab" aria-controls="{0}" aria-selected="{3}">{1}</a>
</li>
"""  # noqa

TAB_PANE_TEMPLATE = """<div class="tab-pane fade show{2}" id="{0}" role="tabpanel" aria-labelledby="{0}-tab">{1}</div>"""  # noqa

TAB_COUNT = 0


def tab_formatter(source, language, class_name, options, md, **kwargs):
    """Format source as tabs."""
    global TAB_COUNT
    TAB_COUNT += 1

    source = [chunk.split("\n", 1) for chunk in source.split("-----\n")]

    classes = kwargs["classes"]
    id_value = kwargs["id_value"]
    attrs = kwargs["attrs"]

    if class_name:
        classes.insert(0, class_name)

    id_value = ' id="{}"'.format(id_value) if id_value else ""
    classes = " {}".format(" ".join(classes)) if classes else ""
    attrs = (
        " " + " ".join('{k}="{v}"'.format(k=k, v=v) for k, v in attrs.items())
        if attrs
        else ""
    )

    tabs = ""
    tab_panes = ""
    for i, (tab_name, tab_content) in enumerate(source):
        tab_id = re.sub(r"\s", "_", tab_name).lower() + str(TAB_COUNT)
        tabs += TAB_TEMPLATE.format(
            tab_id,
            tab_name,
            " active" if i == 0 else "",
            "true" if i == 0 else "false",
        )
        tab_panes += TAB_PANE_TEMPLATE.format(
            tab_id,
            markdown.markdown(tab_content, extensions=["fenced_code", "meta"]),
            " active" if i == 0 else "",
        )

    return TAB_OUTER_TEMPLATE.format(
        tabs=tabs, tab_panes=tab_panes, id_value=id_value, classes=classes
    )


extension_configs = {
    "pymdownx.superfences": {
        "custom_fences": [
            {
                "name": "bootstrap-tabs",
                "class": "bootstrap-tabs",
                "format": tab_formatter,
            }
        ]
    }
}


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
    md = markdown.Markdown(
        extensions=["fenced_code", "meta", "pymdownx.superfences"],
        extension_configs=extension_configs,
    )
    text = path.read_text()
    template = template.replace("<CONTENT>", md.convert(text))
    return template.replace("<TITLE>", f"{md.Meta['title'][0]} - dbc docs")


if __name__ == "__main__":
    convert_all_markdown_files()
