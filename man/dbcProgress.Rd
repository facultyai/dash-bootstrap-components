% Auto-generated: do not edit by hand
\name{dbcProgress}

\alias{dbcProgress}

\title{Progress component}

\description{
A component for creating progress bars just with CSS. Control the current progress with a callback and the `value` prop.
}

\usage{
dbcProgress(children=NULL, id=NULL, style=NULL, className=NULL,
key=NULL, tag=NULL, bar=NULL, multi=NULL, max=NULL,
value=NULL, animated=NULL, striped=NULL, color=NULL,
barClassName=NULL, bar_style=NULL, loading_state=NULL)
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

\item{tag}{Character. HTML tag to use for the progress bar, default: div}

\item{bar}{Logical. Apply progress-bar class, for use inside a multi progress bar.}

\item{multi}{Logical. Create container for multiple progress bars}

\item{max}{Character | numeric. Upper limit for value, default: 100}

\item{value}{Character | numeric. Specify progress, value from 0 to max inclusive.}

\item{animated}{Logical. Animate the bar, must have striped set to True to work.}

\item{striped}{Logical. Use striped progress bar}

\item{color}{Character. Set color of the progress bar, options: primary, secondary, success,
warning, danger, info or any valid CSS color
of your choice (e.g. a hex code, a decimal code or a CSS color name).}

\item{barClassName}{Character. CSS classes to apply to the bar.}

\item{bar_style}{Named list. Style arguments to pass to the bar.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

