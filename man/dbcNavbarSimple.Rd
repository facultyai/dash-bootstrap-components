% Auto-generated: do not edit by hand
\name{dbcNavbarSimple}

\alias{dbcNavbarSimple}

\title{NavbarSimple component}

\description{
A self-contained navbar ready for use. If you need more customisability try `Navbar` instead.
}

\usage{
dbcNavbarSimple(children=NULL, id=NULL, brand=NULL,
brand_external_link=NULL, brand_href=NULL, brand_style=NULL,
className=NULL, class_name=NULL, color=NULL, dark=NULL,
expand=NULL, fixed=NULL, fluid=NULL, key=NULL, light=NULL,
links_left=NULL, loading_state=NULL, sticky=NULL, style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{brand}{Character. Brand text, to go top left of the navbar.}

\item{brand_external_link}{Logical. If true, the browser will treat the brand link as external,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.}

\item{brand_href}{Character. Link to attach to brand.}

\item{brand_style}{Named list. CSS style options for brand.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Sets the color of the NavbarSimple. Main options are primary, light and dark, default light.

You can also choose one of the other contextual classes provided by Bootstrap
(secondary, success, warning, danger, info, white) or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)}

\item{dark}{Logical. Applies the `navbar-dark` class to the NavbarSimple, causing text in the
children of the Navbar to use light colors for contrast / visibility.}

\item{expand}{Logical | character. Specify breakpoint at which to expand the menu bar. Options are: 'xs',
'sm', 'md', 'lg', or 'xl'. Below this breakpoint the navbar will collapse
and navitems will be placed in a togglable collapse element.}

\item{fixed}{Character. Fix the navbar's position at the top or bottom of the page, options: top,
bottom}

\item{fluid}{Logical. The contents of the Navbar are wrapped in a container, use fluid=True to
make this container fluid, so that in particular, the contents of the
navbar fill the available horizontal space.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{light}{Logical. Applies the `navbar-light` class to the NavbarSimple, causing text in the
children of the Navbar to use dark colors for contrast / visibility.}

\item{links_left}{Logical. Align the navlinks in the navbar to the left. Default: False.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{sticky}{Character. Stick the navbar to the top or the bottom of the viewport, options: top, bottom

With `sticky`, the navbar remains in the viewport when you scroll. By
contrast, with `fixed`, the navbar will remain at the top or bottom of
the page.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

