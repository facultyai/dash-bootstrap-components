# AUTO GENERATED FILE - DO NOT EDIT

export dbc_cardimg

"""
    dbc_cardimg(;kwargs...)
    dbc_cardimg(children::Any;kwargs...)
    dbc_cardimg(children_maker::Function;kwargs...)


A CardImg component.
Use CardImg to add images to your cards.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `alt` (String; optional): Alternative text in case an image can't be displayed.
- `bottom` (Bool; optional): Set to True if image is at bottom of card. This will apply the
card-img-bottom class which rounds the bottom corners to match the corners
of the card.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `src` (String; optional): The URI of the embeddable content.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `tag` (String; optional): HTML tag to use for the card body, default: div
- `title` (String; optional): Text to be displayed as a tooltip when hovering
- `top` (Bool; optional): Set to True if image is at top of card. This will apply the card-img-top
class which rounds the top corners to match the corners of the card.
"""
function dbc_cardimg(; kwargs...)
        available_props = Symbol[:children, :id, :alt, :bottom, :className, :key, :loading_state, :src, :style, :tag, :title, :top]
        wild_props = Symbol[]
        return Component("dbc_cardimg", "CardImg", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_cardimg(children::Any; kwargs...) = dbc_cardimg(;kwargs..., children = children)
dbc_cardimg(children_maker::Function; kwargs...) = dbc_cardimg(children_maker(); kwargs...)

