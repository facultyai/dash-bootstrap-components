---
title: Tabs
lead: A self-contained tabs component with Bootstrap styles.
---

## Tabs as children

The easiest way to use `Tabs` is to pass it one or more `Tab` components as children. Use the `label` argument to specify the label in the tab. `Tabs` will automatically switch between tabs for you by displaying and hiding the content of each `Tab` below the tab pane. You can also use the `disabled` argument to disable individual tabs. This will cause the label to be grayed out and make the tab unresponsive to being clicked.

{{example:components/tabs/simple.py:tabs}}

## Tabs with callback

You can also use the `active_tab` prop of `Tabs` in a callback to switch between tabs. This is useful if you want to have content recalculated / recomputed when you switch tabs, or if you want to have the active tab affect something on the page that isn't positioned directly below the tab pane.

{{example:components/tabs/active_tab.py:tabs}}

## Tabs in cards

Use `card=True` when placing your `Tabs` inside a `CardHeader`. You must use a callback to insert the tab content into the card body rather than relying on the tabs as children approach outlined above.

{{example:components/tabs/card.py:card}}

## Styling tabs

You can modify the style of the tabs and labels using the `tab_style` and `label_style` properties. Use `tab_style` to modify the tab itself, for example to modify placement and spacing. Use `label_style` to modify the label, for example the font, text color, border-radius and so on.

You can also apply CSS classes to the tab or label using the `tabClassName` or `labelClassName` properties. In the below example we apply the Bootstrap classes `ml-auto`, which sets the left margin to `auto`, and `text-success`, which sets the text color to the theme's 'success' color.

{{example:components/tabs/style.py:tabs}}

{{apidoc:src/components/tabs/Tabs.js}}

{{apidoc:src/components/tabs/Tab.js}}
