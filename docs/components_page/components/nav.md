---
title: Navs
lead: Documentation and examples for how to use Bootstrap's navigation components with _dash-bootstrap-components_.
---

## Base nav

Navigation is built up using `Nav`, `NavItem`, `NavLink` and `DropdownMenu`. Use `nav=True` when using `DropdownMenu` inside a `Nav` for consistent styling with `NavItem` and `NavLink`.

{{example:components/nav/simple.py:nav}}

It is only necessary to wrap `NavLink` with `NavItem` if you wish to use the `fill` or `justified` keyword arguments detailed below. If you're not using those features you can simplify your layout by just passing `NavLink` directly as children of `Nav`.

{{example:components/nav/link_based.py:nav}}

## Using NavLink

The `NavLink` component can be used like `dash_core_components.Link`, as a regular hyperlink, or as a button by attaching a callback to the `n_clicks` prop. `NavLink` will behave like `dcc.Link` by default if we assign a relative path to `href`, and like a hyperlink if we assign an absolute path. This can be overridden using the `external_link` argument. This is useful, for example, when accessing routes on the underlying flask server.

{{example:components/nav/navlink.py:nav}}

## Horizontal alignment

Use `fill=True` to force navigation items to expand to fill available horizontal space. Use `justified=True` to fill available horizontal space, with each item having equal width.

{{example:components/nav/fill.py:navs}}

## Vertical stacking

Use the `vertical` argument to stack navigation items. You can pass either a Boolean, or one of the Bootstrap breakpoints e.g. `'sm'`, `'lg'`. The example below is vertical on screens larger than the medium breakpoint, and horizontal on smaller screens.

{{example:components/nav/vertical.py:nav}}

## Pills

Use the `pills` argument to indicate active state with pill styled nav items.

{{example:components/nav/pill.py:nav}}

## Tabs

Bootstrap also lets you apply tab styling to navs, check out our self-contained `Tabs` component [here](/l/components/tabs).

{{apidoc:src/components/nav/Nav.js}}

{{apidoc:src/components/nav/NavItem.js}}

{{apidoc:src/components/nav/NavLink.js}}
