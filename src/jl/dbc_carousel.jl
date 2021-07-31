# AUTO GENERATED FILE - DO NOT EDIT

export dbc_carousel

"""
    dbc_carousel(;kwargs...)

A Carousel component.
Component for creating Bootstrap carousel.  This component is a slideshow
for cycling through a series of content.
Keyword arguments:
- `id` (String; optional): The ID of the component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `active_index` (Real; optional): The current visible slide number
- `className` (String; optional): Defines the className of the carousel container.  This is often used with CSS to style elements with common properties.
- `controls` (Bool; optional): Show the Carousel previous and next arrows for changing the current slide
- `indicators` (Bool; optional): Show a set of slide position indicators
- `interval` (Real | String | Bool; optional): the interval at which the carousel automatically cycles (default: 5000)
If set to false, carousel will not Autoplay (i.e. will not automatically cycle).
- `items` (required): The items to display on the slides in the carousel. items has the following type: Array of lists containing elements 'key', 'src', 'alt', 'imgClassName', 'img_style', 'header', 'caption', 'captionClassName'.
Those elements have the following types:
  - `key` (String; optional): A unique identifier for the slide, used to improve performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info.
  - `src` (String; optional): The URL of the image
  - `alt` (String; optional): The alternate text for an image, if the image cannot be displayed
  - `imgClassName` (String; optional): The className for the image.  The default is 'd-block w-100'
  - `img_style` (Dict; optional): The style for the image
  - `header` (String; optional): The header of the text on the slide. It is displayed in a <h5> element
  - `caption` (String; optional): The caption of the item.  The text is displayed in a <p> element
  - `captionClassName` (String; optional): The className for the header and caption containers
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `ride` (a value equal to: 'carousel'; optional): Autoplays the carousel after the user manually cycles the first item. If "carousel", autoplays the carousel on load.
- `slide` (Bool; optional): controls whether the slide animation on the Carousel works or not
- `style` (Dict; optional): Defines CSS styles of the carousel container. Will override styles previously set.
"""
function dbc_carousel(; kwargs...)
        available_props = Symbol[:id, :active_index, :className, :controls, :indicators, :interval, :items, :loading_state, :ride, :slide, :style]
        wild_props = Symbol[]
        return Component("dbc_carousel", "Carousel", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

