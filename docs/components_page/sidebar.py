from typing import NamedTuple

import dash_bootstrap_components as dbc
import dash_html_components as html


class SidebarEntry(NamedTuple):
    slug: str  # identifier corresponding to this entry
    heading: str


def SidebarItem(heading, location, is_active):
    return dbc.NavItem(dbc.NavLink(heading, href=location, active=is_active))


def Sidebar(sidebar_entries, active_item):
    header = html.H1("Components", className="h5")
    items = [
        SidebarItem(
            entry.heading,
            f"/l/components/{entry.slug}",
            active_item == entry.slug,
        )
        for entry in sidebar_entries
    ]
    nav = dbc.Nav(items, className="flex-column")
    return [header, nav]
