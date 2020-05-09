% Auto-generated: do not edit by hand
\name{dbcTab}

\alias{dbcTab}

\title{Tab component}

\description{
Create a single tab. Should be used as a component of Tabs.
}

\usage{
dbcTab(children=NULL, id=NULL, style=NULL, tab_style=NULL, label_style=NULL,
className=NULL, tabClassName=NULL, labelClassName=NULL, key=NULL, label=NULL,
tab_id=NULL, disabled=NULL, loading_state=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{style}{Named list. Defines CSS styles which will override styles previously set. The styles
set here apply to the content of the Tab}

\item{tab_style}{Named list. Defines CSS styles which will override styles previously set. The styles
set here apply to the NavItem in the tab.}

\item{label_style}{Named list. Defines CSS styles which will override styles previously set. The styles
set here apply to the NavLink in the tab.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{tabClassName}{Character. Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the NavItem in the tab.}

\item{labelClassName}{Character. Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the NavLink in the tab.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{label}{Character. The tab's label, displayed in the tab itself.}

\item{tab_id}{Character. Optional identifier for tab used for determining which tab is visible
if not specified, and Tab is being used inside Tabs component, the tabId
will be set to "tab-i" where i is (zero indexed) position of tab in list
tabs pased to Tabs component.}

\item{disabled}{Logical. Determines if tab is disabled or not - defaults to false}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}
