% Auto-generated: do not edit by hand
\name{dbcPopover}

\alias{dbcPopover}

\title{Popover component}

\description{
Popover creates a toggleable overlay that can be used to provide additional information or content to users without having to load a new page or open a new window.  Use the `PopoverHeader` and `PopoverBody` components to control the layout of the children.
}

\usage{
dbcPopover(children=NULL, id=NULL, style=NULL, className=NULL,
key=NULL, placement=NULL, target=NULL, container=NULL,
trigger=NULL, is_open=NULL, hide_arrow=NULL,
innerClassName=NULL, delay=NULL, offset=NULL, flip=NULL,
loading_state=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{placement}{A value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'. Specify popover placement.}

\item{target}{Character. ID of the component to attach the popover to.}

\item{container}{Character. Where to inject the popper DOM node, default body.}

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

\item{is_open}{Logical. Whether the Popover is open or not.}

\item{hide_arrow}{Logical. Hide popover arrow.}

\item{innerClassName}{Character. CSS class to apply to the popover.}

\item{delay}{Lists containing elements 'show', 'hide'.
those elements have the following types:
  - show (numeric; optional)
  - hide (numeric; optional) | numeric. Optionally override show/hide delays - default {show: 0, hide: 250}}

\item{offset}{Character | numeric. Popover offset.}

\item{flip}{Logical. Whether to flip the direction of the popover if too close to the container
edge, default True.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

