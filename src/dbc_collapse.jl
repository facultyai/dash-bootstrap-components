# AUTO GENERATED FILE - DO NOT EDIT

export dbc_collapse

"""
    dbc_collapse(;kwargs...)
    dbc_collapse(children::Any;kwargs...)
    dbc_collapse(children_maker::Function;kwargs...)


A Collapse component.
Hide or show content with a vertical collapsing animation. Visibility of the
children is controlled by the `is_open` prop which can be targetted by
callbacks.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component.
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `tag` (String; optional): HTML tag to use for the collapse contents. Default: div.
- `is_open` (Bool; optional): Whether collapse is currently open.
- `navbar` (Bool; optional): Set to True when using a collapse inside a navbar.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_collapse(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :tag, :is_open, :navbar, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_collapse", "Collapse", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_collapse(children::Any; kwargs...) = dbc_collapse(;kwargs..., children = children)
dbc_collapse(children_maker::Function; kwargs...) = dbc_collapse(children_maker(); kwargs...)

