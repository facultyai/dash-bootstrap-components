# AUTO GENERATED FILE - DO NOT EDIT

export dbc_navbartoggler

"""
    dbc_navbartoggler(;kwargs...)
    dbc_navbartoggler(children::Any;kwargs...)
    dbc_navbartoggler(children_maker::Function;kwargs...)


A NavbarToggler component.
Use this component to create a navbar toggle to show navlinks when the
navbar collapses on smaller screens.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `n_clicks` (Real; optional): An integer that represents the number of times
that this element has been clicked on.
- `n_clicks_timestamp` (Real; optional): An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `type` (String; optional): Toggle type, default: button.
"""
function dbc_navbartoggler(; kwargs...)
        available_props = Symbol[:children, :id, :className, :class_name, :key, :loading_state, :n_clicks, :n_clicks_timestamp, :style, :type]
        wild_props = Symbol[]
        return Component("dbc_navbartoggler", "NavbarToggler", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_navbartoggler(children::Any; kwargs...) = dbc_navbartoggler(;kwargs..., children = children)
dbc_navbartoggler(children_maker::Function; kwargs...) = dbc_navbartoggler(children_maker(); kwargs...)

