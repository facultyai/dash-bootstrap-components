% Auto-generated: do not edit by hand
\name{dbcTable}

\alias{dbcTable}

\title{Table component}

\description{
A component for applying Bootstrap styles to HTML tables. Use this as a drop-in replacement for `html.Table`, or generate a table from a Pandas DataFrame using `dbc.Table.from_dataframe`.
}

\usage{
dbcTable(children=NULL, id=NULL, bordered=NULL, borderless=NULL,
className=NULL, class_name=NULL, color=NULL, dark=NULL,
hover=NULL, key=NULL, loading_state=NULL, responsive=NULL,
size=NULL, striped=NULL, style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{bordered}{Logical. Apply the `table-bordered` class which adds borders on all sides of the
table and cells.}

\item{borderless}{Logical. Apply the `table-borderless` class which removes all borders from the
table and cells.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Table color, options: primary, secondary, success, info, warning, danger,
dark, light. Default: secondary.}

\item{dark}{Logical. **DEPRECATED** - Use color="dark" instead.

Apply the `table-dark` class for dark cell backgrounds and light text.}

\item{hover}{Logical. Apply the `table-hover` class which enables a hover state on table rows
within the table body.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{responsive}{Logical | character. Set to True or one of the breakpoints 'sm', 'md', 'lg', 'xl' to make table
scroll horizontally at lower breakpoints.}

\item{size}{Character. Specify table size, options: 'sm', 'md', 'lg'}

\item{striped}{Logical. Apply the `table-striped` class which applies 'zebra striping' to rows in
the table body.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

