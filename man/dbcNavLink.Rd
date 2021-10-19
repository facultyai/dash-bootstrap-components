% Auto-generated: do not edit by hand
\name{dbcNavLink}

\alias{dbcNavLink}

\title{NavLink component}

\description{
Add a link to a `Nav`. Can be used as a child of `NavItem` or of `Nav` directly.
}

\usage{
dbcNavLink(children=NULL, id=NULL, active=NULL, className=NULL,
class_name=NULL, disabled=NULL, external_link=NULL,
href=NULL, key=NULL, loading_state=NULL, n_clicks=NULL,
n_clicks_timestamp=NULL, style=NULL, target=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{active}{Logical | a value equal to: 'partial', 'exact'. Apply 'active' style to this component. Set to "exact" to automatically
toggle active status when the current pathname matches href, or to
"partial" to automatically toggle on a partial match. Assumes that href is
a relative url such as /link rather than an absolute such as
https://example.com/link

For example
- dbc.NavLink(..., href="/my-page", active="exact") will be active on
  "/my-page" but not "/my-page/other" or "/random"
- dbc.NavLink(..., href="/my-page", active="partial") will be active on
  "/my-page" and "/my-page/other" but not "/random"}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{disabled}{Logical. Disable the link}

\item{external_link}{Logical. If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.}

\item{href}{Character. The URL of the linked resource.}

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

\item{target}{Character. Target attribute to pass on to the link. Only applies to external links.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

