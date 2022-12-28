# AUTO GENERATED FILE - DO NOT EDIT

export dbc_stack

"""
    dbc_stack(;kwargs...)
    dbc_stack(children::Any;kwargs...)
    dbc_stack(children_maker::Function;kwargs...)


A Stack component.
Stacks are shorthand helpers that build on top of existing flexbox
utilities to make component layout faster and easier than ever.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `direction` (a value equal to: 'vertical', 'horizontal'; optional): Which direction to stack the objects in
- `gap` (Real; optional): Set the spacing between each item (0 - 5)
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
"""
function dbc_stack(; kwargs...)
        available_props = Symbol[:children, :id, :className, :class_name, :direction, :gap, :key, :loading_state, :style]
        wild_props = Symbol[]
        return Component("dbc_stack", "Stack", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_stack(children::Any; kwargs...) = dbc_stack(;kwargs..., children = children)
dbc_stack(children_maker::Function; kwargs...) = dbc_stack(children_maker(); kwargs...)

