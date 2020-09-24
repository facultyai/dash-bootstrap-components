# AUTO GENERATED FILE - DO NOT EDIT

export dbc_buttongroup

"""
    dbc_buttongroup(;kwargs...)
    dbc_buttongroup(children::Any;kwargs...)
    dbc_buttongroup(children_maker::Function;kwargs...)


A ButtonGroup component.
A component for creating groups of buttons. Can be used with `Button` or
`DropdownMenu`.
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
- `vertical` (Bool; optional): Group buttons vertically.
- `size` (String; optional): Size of button group, options: 'sm', 'md', 'lg'.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_buttongroup(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :vertical, :size, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_buttongroup", "ButtonGroup", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_buttongroup(children::Any; kwargs...) = dbc_buttongroup(;kwargs..., children = children)
dbc_buttongroup(children_maker::Function; kwargs...) = dbc_buttongroup(children_maker(); kwargs...)

