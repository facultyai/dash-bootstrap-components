% Auto-generated: do not edit by hand
\name{dbcListGroupItem}

\alias{dbcListGroupItem}

\title{ListGroupItem component}

\description{
Create a single item in a `ListGroup`.
}

\usage{
dbcListGroupItem(children=NULL, id=NULL, action=NULL, active=NULL,
className=NULL, class_name=NULL, color=NULL, disabled=NULL,
external_link=NULL, href=NULL, key=NULL, loading_state=NULL,
n_clicks=NULL, n_clicks_timestamp=NULL, style=NULL,
tag=NULL, target=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{action}{Logical. Apply list-group-item-action class for hover animation etc.}

\item{active}{Logical. Apply active style to item}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Item color, options: primary, secondary, success, info, warning,
danger, or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)
default: secondary}

\item{disabled}{Logical. Apply disabled style to item}

\item{external_link}{Logical. If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.}

\item{href}{Character. Pass a URL (relative or absolute) to make the list group item a link.}

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

\item{tag}{Character. HTML tag to use for the listgroupitem, default: li}

\item{target}{Character. Target attribute to pass on to the link. Only applies to external links.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

