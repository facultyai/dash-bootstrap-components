import re

import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html


def ComponentReference(component_name):
    component = getattr(dbc, component_name)
    component_doc = component.__doc__

    return_div = [
        dcc.Markdown("### Keyword arguments for {}".format(component_name))
    ]

    docs = component_doc.split("Keyword arguments:")[-1]

    # formats code blocks that includes square brackets
    docs = docs.replace("[", "\[").replace("]", "\]")
    verbatim_regex = r"`((\\\[)((.|\n)*?)(\\\]))`"
    docs = re.sub(re.compile(verbatim_regex), r"`[\3]`", docs)

    # format links
    link_regex = r"\\\[([\w\.\-:\/]+)\\\]\(([\w\.\-:#\/]+)\)"
    docs = re.sub(re.compile(link_regex), r"[\1](\2)", docs)

    # formats the prop defaults
    prop_optional_default_regex = r"""default (.*)\)"""
    docs = re.sub(
        re.compile(prop_optional_default_regex), r"default `\1`)", docs
    )

    # formats the prop type
    prop_type_regex = r"""(\s*- \w+?\s*\()([^;]*);"""
    docs = re.sub(re.compile(prop_type_regex), r"\1*\2*;", docs)

    # formats the prop name on first level only
    prop_name_regex = r"""(\n- )(\w+?) \("""
    docs = re.sub(re.compile(prop_name_regex), r"\1**`\2`** (", docs)

    # formats keys of nested dicts
    nested_prop_name_regex = r"""(\n\s+- )(\w+?) \("""
    docs = re.sub(re.compile(nested_prop_name_regex), r"\1**`\2`** (", docs)

    # removes a level of nesting
    docs = docs.replace("\n-", "\n")

    return_div.append(dcc.Markdown(docs))
    return html.Div(return_div, className="reference")
