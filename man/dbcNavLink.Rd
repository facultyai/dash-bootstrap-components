% Auto-generated: do not edit by hand
\name{dbcNavLink}

\alias{dbcNavLink}

\title{NavLink component}

\description{
Add a link to a `Nav`. Can be used as a child of `NavItem` or of `Nav` directly.
}

\usage{
dbcNavLink(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, href=NULL,
active=NULL, disabled=NULL, external_link=NULL, n_clicks=NULL,
n_clicks_timestamp=NULL, loading_state=NULL, target=NULL)
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

\item{href}{Character. The URL of the linked resource.}

\item{active}{Logical. Apply 'active' style to this component}

\item{disabled}{Logical. Disable the link}

\item{external_link}{Logical. If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.}

\item{n_clicks}{Numeric. An integer that represents the number of times
that this element has been clicked on.}

\item{n_clicks_timestamp}{Numeric. An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{target}{Character. Target attribute to pass on to the link. Only applies to external links.}
}
