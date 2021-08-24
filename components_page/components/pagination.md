---
title: Pagination
lead: Use the pagination component to create a pagination UI.
---

## Examples

`Pagination` components allow you to quickly create an easy-to-use pagination display. The number of values displayed is controlled using the `max_value` property, and this must be defined. See below for details about changing the `min_value` and `step`.

{{example:components/pagination/simple.py:pagination}}

## Pagination item size

Set the size of the pagination items using the `size` prop. The options are `"sm"` or `"lg"` for small or large items. If you don't specify anything, you will get the default pagination size.

{{example:components/pagination/size.py:pagination}}

## First, Previous, Next and Last icons

You can choose to include the First and Last icons to navigate to the first and last page respectively, by making use of the `first_last` property. Previous and Next icons can be added with the `previous_next` property.

{{example:components/pagination/navigation.py:pagination}}

## Collapse

If there are too many numbers, the pagination object can become unwieldy. Instead, set `fully_expanded=False` to replace some of the numbers with ellipsis. If the `max_value` is too small for this to make a difference, a standard pagination component showing all numbers is rendered instead, even when `fully_expanded=False`.

{{example:components/pagination/collapse.py:pagination}}

## Callbacks

The `active_page` prop allows you to dynamically change which page is active, as well as be used in callbacks to identify when a user has clicked one of the buttons.

{{example:components/pagination/callback.py:pagination}}

{{apidoc:src/components/pagination/Pagination.js}}
