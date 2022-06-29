% Auto-generated: do not edit by hand
\name{dbcTooltip}

\alias{dbcTooltip}

\title{Tooltip component}

\description{
A component for adding tooltips to any element, no callbacks required!  Simply add the Tooltip to you layout, and give it a target (id of a component to which the tooltip should be attached)
}

\usage{
dbcTooltip(children=NULL, id=NULL, autohide=NULL, className=NULL,
class_name=NULL, delay=NULL, fade=NULL, flip=NULL,
is_open=NULL, key=NULL, loading_state=NULL, placement=NULL,
style=NULL, target=NULL, trigger=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{autohide}{Logical. Optionally hide tooltip when hovering over tooltip content - default True.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{delay}{Lists containing elements 'show', 'hide'.
those elements have the following types:
  - show (numeric; optional)
  - hide (numeric; optional). Control the delay of hide and show events.}

\item{fade}{Logical. If True, a fade animation will be applied when `is_open` is toggled. If
False the Alert will simply appear and disappear.}

\item{flip}{Logical. Whether to flip the direction of the popover if too close to the container
edge, default True.}

\item{is_open}{Logical. Whether the Tooltip is open or not.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{placement}{A value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'. How to place the tooltip.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{target}{Character | named list. The id of the element to attach the tooltip to}

\item{trigger}{Character. Space separated list of triggers (e.g. "click hover focus legacy"). These
specify ways in which the target component can toggle the tooltip. If
omitted you must toggle the tooltip yourself using callbacks. Options
are:
- "click": toggles the popover when the target is clicked.
- "hover": toggles the popover when the target is hovered over with the
cursor.
- "focus": toggles the popover when the target receives focus
- "legacy": toggles the popover when the target is clicked, but will also
dismiss the popover when the user clicks outside of the popover.

Default is "hover focus"}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

