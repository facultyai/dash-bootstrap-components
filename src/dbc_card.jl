# AUTO GENERATED FILE - DO NOT EDIT

export dbc_card

"""
    dbc_card(;kwargs...)
    dbc_card(children::Any;kwargs...)
    dbc_card(children_maker::Function;kwargs...)


A Card component.
Component for creating Bootstrap cards. Use in conjunction with CardBody,
CardImg, CardLink, CardHeader and CardFooter. Can also be used in
conjunction with CardColumns, CardDeck, CardGroup for different layout
options.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `color` (String; optional): Card color, options: primary, secondary, success, info, warning, danger,
light, dark or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name).
Default is light.
- `body` (Bool; optional): Apply the `card-body` class to the card, so that there is no need to also
include a CardBody component in the children of this Card. Default: False
- `outline` (Bool; optional): Apply color styling to just the border of the card.
- `inverse` (Bool; optional): Invert text colours for use with a darker background.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_card(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :color, :body, :outline, :inverse, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_card", "Card", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_card(children::Any; kwargs...) = dbc_card(;kwargs..., children = children)
dbc_card(children_maker::Function; kwargs...) = dbc_card(children_maker(); kwargs...)

