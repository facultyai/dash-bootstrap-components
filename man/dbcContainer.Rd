% Auto-generated: do not edit by hand
\name{dbcContainer}

\alias{dbcContainer}

\title{Container component}

\description{
Containers provide a means to center and horizontally pad your site’s contents.
}

\usage{
dbcContainer(children=NULL, id=NULL, className=NULL, class_name=NULL,
fluid=NULL, key=NULL, loading_state=NULL, style=NULL,
tag=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{fluid}{Logical | character. If True the container-fluid class will be applied, and the Container will
expand to fill available space. A non-fluid container resizes responsively
to a fixed width at the different breakpoints.

You can also set the fluid property to one of the Bootstrap breakpoints:
"sm", "md", "lg", "xl" or "xxl", so that the container fluidly expands to
fill the screen until the specified breakpoint, then resize responsively
at higher breakpoints.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tag}{Character. HTML tag to apply the container class to, default: div}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

