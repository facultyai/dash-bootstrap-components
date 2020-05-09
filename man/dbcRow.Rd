% Auto-generated: do not edit by hand
\name{dbcRow}

\alias{dbcRow}

\title{Row component}

\description{
Row is one of the core layout components in Bootstrap. Build up your layout as a series of rows of columns. Row has arguments for controlling the vertical and horizontal alignment of its children, as well as the spacing between columns.
}

\usage{
dbcRow(children=NULL, id=NULL, style=NULL, className=NULL,
key=NULL, no_gutters=NULL, align=NULL, justify=NULL,
form=NULL, loading_state=NULL)
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

\item{no_gutters}{Logical. Remove the "gutters" between columns in this row.
see https://getbootstrap.com/docs/4.0/layout/grid/#no-gutters}

\item{align}{A value equal to: 'start', 'center', 'end', 'stretch', 'baseline'. Set vertical alignment of columns in this row. Options are 'start',
'center', 'end', 'stretch' and 'baseline'.}

\item{justify}{A value equal to: 'start', 'center', 'end', 'around', 'between'. Set horizontal spacing and alignment of columns in this row. Options are
'start', 'center', 'end', 'around' and 'between'.}

\item{form}{Logical. For use in forms. When set to True the `form-row` class is applied, which
overrides the default column gutters for a tighter, more compact layout.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

