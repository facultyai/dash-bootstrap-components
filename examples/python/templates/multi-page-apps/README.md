# Multi-page apps

This directory contains some multi-page example apps, demonstrating how the
navigation components in *dash-bootstrap-components* can be used to create easy
to navigate dashboards.

## `navbar.py`

This example creates a multipage app with a navbar for navigation. It uses a
Dash callback to toggle the `active` property of the `NavLink` components,
allowing users to easily see which page they are on.

## `simple_sidebar.py`

This example creates a simple sidebar with vertically stacked links for
navigation. A callback is again used to set the `active` property of the
`NavLink` components, with the "pill" style applied to the active link.

## `sidebar-with-submenus`

This is like the simple sidebar, but the navlinks are gathered into collapsible
collections which can be hidden or revealed by clicking. The app uses chevron
icons fontawesome to indicate that the collapsible elements can be expanded or
collapsed.

## `responsive-sidebar`

This is also like the simple sidebar, but adapts to smaller screen sizes
(either when the browser window is resized, or the app is viewed on a mobile
device). On smaller screens, the sidebar becomes a top navbar with the links
becoming collapsible. Visit a deployed version on a mobile device, or toggle
the device toolbar in your browser's developer tools to check it out!

## `responsive-collapsible-sidebar`

This is like the responsive sidebar example, but on large screens the sidebar
is also collapsible.
