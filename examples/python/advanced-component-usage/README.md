# Advanced component usage

This directory contains more examples of how to use the components available
in `dash-bootstrap-components`, covering more advanced usage patterns and going
into more details on some features than there is space to do in the
documentation.

## `graphs_in_tabs.py`

Shows how to render tab content dynamically using a callback. This can help
prevent a common problem with graphs not being sized correctly when the tab is
switched. The example shows how a `dcc.Store` can be used to cache results
client side in case the graph generation process is expensive.

## `navbars.py`

A simple app demonstrating how to manually construct a navbar with a customised
layout using the `Navbar` component and the supporting `Nav`, `NavItem`,
`NavLink`, `NavbarBrand`, and `NavbarToggler` components.

## `toast.py`

This app demonstrates how you can display dismissable messages to the user
using the Toast component.

The key idea is to maintain a list of the messages in memory on the client side
using dash_core_components.Store. Each time the Store is updated, a callback
renders all of the messages that are in the Store.

The displayed messages can then be controlled by controlling what is in the
Store. In this example we use a pattern-matching callback that responds to both
the main button being clicked, but also any of the dismiss buttons of the Toast
components. With dash.callback_context we can determine what was pressed, and
add or remove a message from the Store accordingly. Using this same pattern you
can add or remove messages from the message store in response to all kinds of
different events.
