% Auto-generated: do not edit by hand
\name{dbcCarousel}

\alias{dbcCarousel}

\title{Carousel component}

\description{
Component for creating Bootstrap carousel.  This component is a slideshow for cycling through a series of content.
}

\usage{
dbcCarousel(id=NULL, active_index=NULL, className=NULL, class_name=NULL,
controls=NULL, indicators=NULL, interval=NULL, items=NULL,
loading_state=NULL, ride=NULL, slide=NULL, style=NULL,
variant=NULL)
}

\arguments{
\item{id}{Character. The ID of the component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{active_index}{Numeric. The current visible slide number}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

efines the className of the carousel container. Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Defines the className of the carousel container. Often used with CSS to style elements with common properties.}

\item{controls}{Logical. Show the Carousel previous and next arrows for changing the current slide}

\item{indicators}{Logical. Show a set of slide position indicators}

\item{interval}{Numeric. the interval at which the carousel automatically cycles (default: 5000)
If set to None, carousel will not Autoplay (i.e. will not automatically cycle).}

\item{items}{List of lists containing elements 'key', 'src', 'alt', 'img_class_name', 'imgclassname', 'img_style', 'header', 'caption', 'caption_class_name', 'captionclassname'.
those elements have the following types:
  - key (character; optional): a unique identifier for the slide, used to improve performance by react.js while rendering components
see https://reactjs.org/docs/lists-and-keys.html for more info.
  - src (character; optional): the url of the image
  - alt (character; optional): the alternate text for an image, if the image cannot be displayed
  - img_class_name (character; optional): the classname for the image.  the default is 'd-block w-100'
  - imgclassname (character; optional): **deprecated** use `img_class_name` instead.

the classname for the image.  the default is 'd-block w-100'
  - img_style (named list; optional): the style for the image
  - header (character; optional): the header of the text on the slide. it is displayed in a <h5> element
  - caption (character; optional): the caption of the item.  the text is displayed in a <p> element
  - caption_class_name (character; optional): the class name for the header and caption container
  - captionclassname (character; optional): **deprecated** use `caption_class_name` instead.

the class name for the header and caption containers. The items to display on the slides in the carousel}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{ride}{A value equal to: 'carousel'. Autoplays the carousel after the user manually cycles the first item. If "carousel", autoplays the carousel on load.}

\item{slide}{Logical. controls whether the slide animation on the Carousel works or not}

\item{style}{Named list. Defines CSS styles of the carousel container. Will override styles previously set.}

\item{variant}{A value equal to: 'dark'. Add `variant="dark"` to the Carousel for darker controls, indicators, and
captions.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

