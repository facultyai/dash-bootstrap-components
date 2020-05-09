% Auto-generated: do not edit by hand
\name{dbcTooltip}

\alias{dbcTooltip}

\title{Tooltip component}

\description{
A component for adding tooltips to any element, no callbacks required!  Simply add the Tooltip to you layout, and give it a target (id of a component to which the tooltip should be attached)
}

\usage{
dbcTooltip(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, target=NULL,
boundaries_element=NULL, hide_arrow=NULL, container=NULL, delay=NULL,
innerClassName=NULL, arrowClassName=NULL, autohide=NULL, placement=NULL,
offset=NULL, loading_state=NULL)
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

\item{target}{Character. The id of the element to attach the tooltip to}

\item{boundaries_element}{Character. Boundaries for popper, can be scrollParent, window, viewport, or any DOM
element}

\item{hide_arrow}{Logical. Hide arrow on tooltip}

\item{container}{Character. Where to inject the popper DOM node, default body}

\item{delay}{Lists containing elements 'show', 'hide'.
those elements have the following types:
  - show (numeric; optional)
  - hide (numeric; optional) | numeric. optionally override show/hide delays - default { show: 0, hide: 250 }}

\item{innerClassName}{Character. CSS classes to apply to the inner-tooltip}

\item{arrowClassName}{Character. CSS classes to apply to the arrow-tooltip ('arrow' by default)}

\item{autohide}{Logical. Optionally hide tooltip when hovering over tooltip content - default true}

\item{placement}{A value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'. How to place the tooltip.}

\item{offset}{Character | numeric. Tooltip offset}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}
