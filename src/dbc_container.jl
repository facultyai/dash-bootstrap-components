# AUTO GENERATED FILE - DO NOT EDIT

export dbc_container

"""
    dbc_container(;kwargs...)
    dbc_container(children::Any;kwargs...)
    dbc_container(children_maker::Function;kwargs...)


A Container component.
Containers provide a means to center and horizontally pad your site’s
contents.
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
- `fluid` (Bool; optional): If True the container-fluid class will be applied, and the Container will
expand to fill available space. A non-fluid container resizes responsively
to a fixed width at the different breakpoints.
- `tag` (String; optional): HTML tag to apply the container class to, default: div
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_container(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :fluid, :tag, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_container", "Container", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_container(children::Any; kwargs...) = dbc_container(;kwargs..., children = children)
dbc_container(children_maker::Function; kwargs...) = dbc_container(children_maker(); kwargs...)

