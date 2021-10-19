% Auto-generated: do not edit by hand
\name{dbcCollapse}

\alias{dbcCollapse}

\title{Collapse component}

\description{
Hide or show content with a vertical collapsing animation. Visibility of the children is controlled by the `is_open` prop which can be targetted by callbacks.
}

\usage{
dbcCollapse(children=NULL, id=NULL, className=NULL, class_name=NULL,
is_open=NULL, key=NULL, loading_state=NULL, navbar=NULL,
style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{is_open}{Logical. Whether collapse is currently open.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{navbar}{Logical. Set to True when using a collapse inside a navbar.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

