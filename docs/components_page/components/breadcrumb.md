---
title: Breadcrumb
lead: Use the Breadcrumb component to create a breadcrumb navigation.
---

You can create a breadcrumb using the `Breadcrumb` and `BreadcrumbItem` components.

{{example:components/breadcrumb/simple.py:breadcrumb}}

## `active` property

You can change which part of the breadcrumb has the `active` property by setting `active` on the breadcrumb items. Setting `active` to `"exact"` or `"partial"` automatically updates the links as the pages change. See below for details.

{{example:components/breadcrumb/active.py:breadcrumb}}

{{apidoc:src/components/breadcrumb/Breadcrumb.js}}

{{apidoc:src/components/breadcrumb/BreadcrumbItem.js}}
