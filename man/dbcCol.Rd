% Auto-generated: do not edit by hand
\name{dbcCol}

\alias{dbcCol}

\title{Col component}

\description{
Component for creating Bootstrap columns to control the layout of your page.  Use the width argument to specify width, or use the breakpoint arguments (xs, sm, md, lg, xl) to control the width of the columns on different screen sizes to achieve a responsive layout.
}

\usage{
dbcCol(children=NULL, id=NULL, align=NULL, className=NULL,
class_name=NULL, key=NULL, lg=NULL, loading_state=NULL,
md=NULL, sm=NULL, style=NULL, width=NULL, xl=NULL, xs=NULL,
xxl=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{align}{A value equal to: 'start', 'center', 'end', 'stretch', 'baseline'. Set vertical alignment of this column's content in the parent row. Options
are 'start', 'center', 'end', 'stretch', 'baseline'.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{lg}{Specify column behaviour on a large screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{md}{Specify column behaviour on a medium screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{sm}{Specify column behaviour on a small screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{width}{Specify the width of the column. Behind the scenes this sets behaviour at
the xs breakpoint, and will be overriden if xs is specified.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{xl}{Specify column behaviour on an extra large screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{xs}{Specify column behaviour on an extra small screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}

\item{xxl}{Specify column behaviour on an extra extra large screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

