% Auto-generated: do not edit by hand
\name{dbcFormText}

\alias{dbcFormText}

\title{FormText component}

\description{
Add explanatory text below your input components.
}

\usage{
dbcFormText(children=NULL, id=NULL, className=NULL, class_name=NULL,
color=NULL, key=NULL, loading_state=NULL, style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Text color, options: primary, secondary, success, warning, danger, info,
muted, light, dark, body, white, black-50, white-50 or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name).}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

