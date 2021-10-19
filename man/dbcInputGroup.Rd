% Auto-generated: do not edit by hand
\name{dbcInputGroup}

\alias{dbcInputGroup}

\title{InputGroup component}

\description{
A component for grouping together inputs and buttons, dropdowns or text.
}

\usage{
dbcInputGroup(children=NULL, id=NULL, className=NULL, class_name=NULL,
key=NULL, loading_state=NULL, size=NULL, style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

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

\item{size}{Character. Set the size of the Input. Options: 'sm' (small), 'md' (medium)
or 'lg' (large). Default is 'md'.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

