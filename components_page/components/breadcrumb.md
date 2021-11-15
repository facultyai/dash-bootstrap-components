---
title: Breadcrumb
lead: Indicate the current page’s location within a navigational hierarchy that automatically adds separators via CSS.
---

## Examples

You can create breadcrumbs using the `Breadcrumb` component. Items are specified with the `items` prop. You must specify a `label` for each item, and can optionally specify:
- `href` to add a link;
- `external_link` to determine whether the link should be treated as a Dash style link or whether it should reload the page; and,
- `active` to determine whether the item has the "active" style applied to indicate that it corresponds to the current location.

{{example:components/breadcrumb/simple.py:breadcrumb}}

{{apidoc:src/components/breadcrumb/Breadcrumb.js}}
