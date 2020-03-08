---
title: ListGroup
lead: A simple, flexible component for displaying a series of content.
---

## Simple example

The most basic `ListGroup` is an unordered list of `ListGroupItem` components.

{{example:components/list_group/simple.py:list_group}}

## Active items

Set `active=True` to indicate the current active selection.

{{example:components/list_group/active.py:list_group}}

## Links

You can use `ListGroupItem` as an internal, or external link, or use its `n_clicks` prop in callbacks. Use the `disabled` prop to disable the link / button behaviour.

{{example:components/list_group/links.py:list_group}}

## Colors

Pass one of Bootstrap's contextual colors to the `color` argument of `ListGroupItem` to set the background and text color of the contents.

{{example:components/list_group/colors.py:list_group}}

## Custom content

You can pass any Dash components to the children of `ListGroupItem`. The components `ListGroupItemHeading` and `ListGroupItemText` automatically apply the relevant CSS classes for styling text content in list groups.

{{example:components/list_group/content.py:list_group}}

## Horizontal

You can create a horizontal list group by setting `horizontal=True`. Alternatively, supply one of the Bootstrap breakpoints for a list group that is horizontal at that breakpoint and up.

In the below example, the first list group is always horizontal, the second is horizontal at the large breakpoint and up, and stacks vertically on smaller screens.

{{example:components/list_group/horizontal.py:list_group}}

{{apidoc:src/components/listgroup/ListGroup.js}}

{{apidoc:src/components/listgroup/ListGroupItem.js}}

{{apidoc:src/components/listgroup/ListGroupItemHeading.js}}

{{apidoc:src/components/listgroup/ListGroupItemText.js}}
