# AUTO GENERATED FILE - DO NOT EDIT

export dbc_alert

"""
    dbc_alert(;kwargs...)
    dbc_alert(children::Any;kwargs...)
    dbc_alert(children_maker::Function;kwargs...)


An Alert component.
Alert allows you to create contextual feedback messages on user actions.

Control the visibility using callbacks with the `is_open` prop, or set it to
auto-dismiss with the `duration` prop.
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
- `color` (String; optional): Alert color, options: primary, secondary, success, info, warning, danger,
link or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)
Default: secondary.
- `is_open` (Bool; optional): Whether alert is open. Default: True.
- `fade` (Bool; optional): If True, a fade animation will be applied when `is_open` is toggled. If
False the Alert will simply appear and disappear.
- `dismissable` (Bool; optional): If true, add a close button that allows Alert to be dismissed.
- `duration` (Real; optional): Duration in milliseconds after which the Alert dismisses itself.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_alert(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :color, :is_open, :fade, :dismissable, :duration, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_alert", "Alert", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_alert(children::Any; kwargs...) = dbc_alert(;kwargs..., children = children)
dbc_alert(children_maker::Function; kwargs...) = dbc_alert(children_maker(); kwargs...)

