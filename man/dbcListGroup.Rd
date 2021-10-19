% Auto-generated: do not edit by hand
\name{dbcListGroup}

\alias{dbcListGroup}

\title{ListGroup component}

\description{
Bootstrap list groups are a flexible way to display a series of content. Use in conjunction with `ListGroupItem`, `ListGroupItemHeading` and `ListGroupItemText`.
}

\usage{
dbcListGroup(children=NULL, id=NULL, className=NULL, class_name=NULL,
flush=NULL, horizontal=NULL, key=NULL, loading_state=NULL,
style=NULL, tag=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{flush}{Logical. When True the `list-group-flush` class is applied which removes some borders
and rounded corners from the list group in order that they can be rendered
edge-to-edge in the parent container (e.g. a Card).}

\item{horizontal}{Logical | character. Set to True for a horizontal ListGroup, or supply one of the breakpoints
as a string for a ListGroup that is horizontal at that breakpoint and up.

Note that horizontal ListGroups cannot be combined with flush ListGroups,
so if flush is True then horizontal has no effect.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tag}{Character. HTML tag to use for the list, default: ul}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

