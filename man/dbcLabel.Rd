% Auto-generated: do not edit by hand
\name{dbcLabel}

\alias{dbcLabel}

\title{Label component}

\description{
A component for adding labels to inputs in forms with added sizing controls.
}

\usage{
dbcLabel(children=NULL, id=NULL, style=NULL, className=NULL,
key=NULL, hidden=NULL, size=NULL, html_for=NULL, width=NULL,
xs=NULL, sm=NULL, md=NULL, lg=NULL, xl=NULL, align=NULL,
color=NULL, loading_state=NULL)
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

\item{hidden}{Logical. Hide label from UI, but allow it to be discovered by screen-readers.}

\item{size}{Character. Set size of label. Options 'sm', 'md' (default) or 'lg'.}

\item{html_for}{Character. Set the `for` attribute of the label to bind it to a particular element}

\item{width}{Specify width of label for use in grid layouts. Accepts the same values
as the Col component.}

\item{xs}{Specify label width on extra small screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{sm}{Specify label width on a small screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{md}{Specify label width on a medium screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{lg}{Specify label width on a large screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{xl}{Specify label width on an extra large screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{align}{A value equal to: 'start', 'center', 'end'. Set vertical alignment of the label, options: 'start', 'center', 'end',
default: 'center'}

\item{color}{Character. Text color, options: primary, secondary, success, warning, danger, info,
muted, light, dark, body, white, black-50, white-50.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

