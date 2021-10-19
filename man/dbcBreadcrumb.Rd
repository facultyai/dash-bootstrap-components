% Auto-generated: do not edit by hand
\name{dbcBreadcrumb}

\alias{dbcBreadcrumb}

\title{Breadcrumb component}

\description{
Use breadcrumbs to create a navigation breadcrumb in your app.
}

\usage{
dbcBreadcrumb(id=NULL, className=NULL, class_name=NULL,
itemClassName=NULL, item_class_name=NULL, item_style=NULL,
items=NULL, key=NULL, loading_state=NULL, style=NULL,
tag=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** - Use class_name instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{itemClassName}{Character. **DEPRECATED** - use item_class_name instead.

Class name ot apply to each item.}

\item{item_class_name}{Character. Class name to apply to each item.}

\item{item_style}{Named list. Defines inline CSS styles that will be added to each item in the
breadcrumbs.}

\item{items}{List of lists containing elements 'label', 'href', 'active', 'external_link', 'target', 'title'.
those elements have the following types:
  - label (character; optional): label to display inside the breadcrumbs.
  - href (character; optional): url of the resource to link to
  - active (logical; optional): apply 'active' style to this component.
  - external_link (logical; optional): if true, the browser will treat this as an external link, forcing a
page refresh at the new location. if false, this just changes the
location without triggering a page refresh. use this if you are
observing dcc.location, for instance. defaults to true for absolute
urls and false otherwise.
  - target (character; optional): target attribute to pass on to the link. only applies to external links.
  - title (character; optional): title attribute for the inner a elements. The details of the items to render inside of this component.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tag}{Named list. HTML tag to use for the outer breadcrumb component. Default: "nav".}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

