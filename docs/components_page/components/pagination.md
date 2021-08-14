---
title: Pagination
lead: Use the pagination component to create a pagination UI.
---

Pagination components are built up using an outer `Pagination` component, with nested `PaginationItems`. The behaviour of each button can be assigned to callbacks, or provided with a specific link using the `href` attribute of the `PaginationItems`. In addition, the items can be made `active` or `disabled` where required.

It's important to note that this is merely a way of producing a nice pagination UI, rather than create a fully functioning pagination component.

{{example:components/pagination/simple.py:pagination}}

## Pagination item size

Set the size of the pagination items using the `size` prop. The options are `"sm"` or `"lg"` for small or large items. If you don't specify anything, you will get the default pagination size.

{{example:components/pagination/size.py:pagination}}

## Predefined pagination items

There are some pre-defined pagination items including `first`, `previous`, `next`, `last` and `ellipsis` which can be used to render standard items. They can be selected using the `predefined_types` attribute and will overwrite the `item_title` attribute. The behaviour of these needs to be controlled in the same way as when `item_title` is specified.

{{example:components/pagination/predefined.py:pagination}}

{{apidoc:src/components/pagination/Pagination.js}}

{{apidoc:src/components/pagination/PaginationItem.js}}
