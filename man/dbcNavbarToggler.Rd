% Auto-generated: do not edit by hand
\name{dbcNavbarToggler}

\alias{dbcNavbarToggler}

\title{NavbarToggler component}

\description{
Use this component to create a navbar toggle to show navlinks when the navbar collapses on smaller screens.
}

\usage{
dbcNavbarToggler(children=NULL, id=NULL, className=NULL, class_name=NULL,
key=NULL, loading_state=NULL, n_clicks=NULL,
n_clicks_timestamp=NULL, style=NULL, type=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{n_clicks}{Numeric. An integer that represents the number of times
that this element has been clicked on.}

\item{n_clicks_timestamp}{Numeric. An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{type}{Character. Toggle type, default: button.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

