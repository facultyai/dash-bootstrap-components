---
title: Accordion
lead: Use the Accordion component to create collapsible lists.
---

## Examples

You can create an accordion using the `Accordion` and `AccordionItem` components. Each section header is determined by the `title` prop of the `AccordionItem`.

{{example:components/accordion/simple.py:accordion}}

## Start Collapsed

You can set which item is opened when it is first started using the `active_item` property. If this is not defined, the first item will be open by default. If you want no items to be open on start up, you can specify `start_collapsed=True`.

{{example:components/accordion/collapsed.py:accordion}}

## Flush

Add flush to change some of the styling, including removing borders, and rounding some of the edges to fit in line with the parent container.

{{example:components/accordion/flush.py:accordion}}

## Callbacks

Each item in the accordion can be assiged a specific `item_id` which is used in the `active_item` property to determine which section is open. If no `item_id` is specified, the sections are labelled as `item-0`, `item-1`, ... consecutively. This can be used within callbacks to determine which sections have been opened.

{{example:components/accordion/callback.py:accordion}}

## Always Open

Add `always_open=True` to ensure that items remain open when another item is opened.

{{example:components/accordion/always_open.py:accordion}}

## Always Open `active_item`

When `always_open=True`, the `active_item` will need to be a list of the specified item IDs.

{{example:components/accordion/always_open_callback.py:accordion}}

{{apidoc:src/components/accordion/Accordion.js}}
{{apidoc:src/components/accordion/AccordionItem.js}}
