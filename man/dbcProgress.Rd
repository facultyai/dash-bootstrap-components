% Auto-generated: do not edit by hand
\name{dbcProgress}

\alias{dbcProgress}

\title{Progress component}

\description{
A component for creating progress bars just with CSS. Control the current progress with a callback and the `value` prop.
}

\usage{
dbcProgress(children=NULL, id=NULL, animated=NULL, bar=NULL,
className=NULL, class_name=NULL, color=NULL,
hide_label=NULL, key=NULL, label=NULL, loading_state=NULL,
max=NULL, min=NULL, striped=NULL, style=NULL, value=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component. Use this to nest progress bars.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{animated}{Logical. Animate the bar, must have striped set to True to work.}

\item{bar}{Logical. Set to True when nesting Progress inside another Progress component to
create a multi-progress bar.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Set color of the progress bar, options: primary, secondary, success,
warning, danger, info or any valid CSS color
of your choice (e.g. a hex code, a decimal code or a CSS color name).}

\item{hide_label}{Logical. Set to True to hide the label.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{label}{Character. Adds a label to the progress bar.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{max}{Numeric. Upper limit for value, default: 100}

\item{min}{Numeric. Upper limit for value, default: 100}

\item{striped}{Logical. Use striped progress bar}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{value}{Character | numeric. Specify progress, value from min to max inclusive.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

