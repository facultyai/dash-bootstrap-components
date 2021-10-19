% Auto-generated: do not edit by hand
\name{dbcNavbar}

\alias{dbcNavbar}

\title{Navbar component}

\description{
The Navbar component can be used to make fully customisable navbars.
}

\usage{
dbcNavbar(children=NULL, id=NULL, className=NULL, class_name=NULL,
color=NULL, dark=NULL, expand=NULL, fixed=NULL, key=NULL,
light=NULL, loading_state=NULL, role=NULL, sticky=NULL,
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

\item{color}{Character. Sets the color of the Navbar. Main options are primary, light and dark, default light.

You can also choose one of the other contextual classes provided by Bootstrap
(secondary, success, warning, danger, info, white) or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)}

\item{dark}{Logical. Applies the `navbar-dark` class to the Navbar, causing text in the children
of the Navbar to use light colors for contrast / visibility.}

\item{expand}{Logical | character. Specify screen size at which to expand the menu bar, e.g. sm, md, lg etc.}

\item{fixed}{Character. Fix the navbar's position at the top or bottom of the page, options: top, bottom}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{light}{Logical. Applies the `navbar-light` class to the Navbar, causing text in the children
of the Navbar to use dark colors for contrast / visibility.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{role}{Character. The ARIA role attribute.}

\item{sticky}{A value equal to: 'top'. Position the navbar at the top of the viewport, but only after scrolling past it.
A convenience prop for the sticky-top positioning class. Not supported in <= IE11
and other older browsers

With `sticky`, the navbar remains in the viewport when you scroll. By
contrast, with `fixed`, the navbar will remain at the top or bottom of
the page.  sticky='top'}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tag}{Character. HTML tag to use for the Navbar, default 'nav'}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

