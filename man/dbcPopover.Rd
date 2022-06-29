% Auto-generated: do not edit by hand
\name{dbcPopover}

\alias{dbcPopover}

\title{Popover component}

\description{
Popover creates a toggleable overlay that can be used to provide additional information or content to users without having to load a new page or open a new window.  Use the `PopoverHeader` and `PopoverBody` components to control the layout of the children.
}

\usage{
dbcPopover(children=NULL, id=NULL, autohide=NULL, body=NULL,
className=NULL, class_name=NULL, delay=NULL, flip=NULL,
hide_arrow=NULL, innerClassName=NULL, inner_class_name=NULL,
is_open=NULL, key=NULL, loading_state=NULL, offset=NULL,
persisted_props=NULL, persistence=NULL,
persistence_type=NULL, placement=NULL, style=NULL,
target=NULL, trigger=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{autohide}{Logical. Optionally hide popover when hovering over content - default False.}

\item{body}{Logical. When body is `True`, the Popover will render all children in a
`PopoverBody` automatically.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{delay}{Lists containing elements 'show', 'hide'.
those elements have the following types:
  - show (numeric; optional)
  - hide (numeric; optional) | numeric. Optionally override show/hide delays}

\item{flip}{Logical. Whether to flip the direction of the popover if too close to the container
edge, default True.}

\item{hide_arrow}{Logical. Hide popover arrow.}

\item{innerClassName}{Character. **DEPRECATED** Use `inner_class_name` instead.

CSS class to apply to the popover.}

\item{inner_class_name}{Character. CSS class to apply to the popover.}

\item{is_open}{Logical. Whether the Popover is open or not.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{offset}{Character | numeric. Offset of the popover relative to its target. The offset can be passed as
a comma separated pair of values e.g. "0,8", where the first number,
skidding, displaces the popover along the reference element. The second
number, distance, displaces the popover away from, or toward, the
reference element in the direction of its placement. A positive number
displaces it further away, while a negative number lets it overlap the
reference. See https://popper.js.org/docs/v2/modifiers/offset/ for more
info.

Alternatively, you can provide just a single 'distance' number e.g. 8 to
displace it horizontally.}

\item{persisted_props}{List of a value equal to: 'is_open's. Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.}

\item{persistence}{Logical | character | numeric. Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.}

\item{persistence_type}{A value equal to: 'local', 'session', 'memory'. Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.}

\item{placement}{A value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'. Specify popover placement.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{target}{Character | named list. ID of the component to attach the popover to.}

\item{trigger}{Character. Space separated list of triggers (e.g. "click hover focus legacy"). These
specify ways in which the target component can toggle the popover. If not
specified you must toggle the popover yourself using callbacks. Options
are:
- "click": toggles the popover when the target is clicked.
- "hover": toggles the popover when the target is hovered over with the
cursor.
- "focus": toggles the popover when the target receives focus
- "legacy": toggles the popover when the target is clicked, but will also
dismiss the popover when the user clicks outside of the popover.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

