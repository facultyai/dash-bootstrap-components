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
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `color` (String; optional): Alert color, options: primary, secondary, success, info, warning, danger,
link or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)
Default: secondary.
- `dismissable` (Bool; optional): If true, add a close button that allows Alert to be dismissed.
- `duration` (Real; optional): Duration in milliseconds after which the Alert dismisses itself.
- `fade` (Bool; optional): If True, a fade animation will be applied when `is_open` is toggled. If
False the Alert will simply appear and disappear.
- `is_open` (Bool; optional): Whether alert is open. Default: True.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `persisted_props` (Array of a value equal to: 'is_open's; optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.
- `persistence` (Bool | String | Real; optional): Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.
- `persistence_type` (a value equal to: 'local', 'session', 'memory'; optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
"""
function dbc_alert(; kwargs...)
        available_props = Symbol[:children, :id, :className, :class_name, :color, :dismissable, :duration, :fade, :is_open, :key, :loading_state, :persisted_props, :persistence, :persistence_type, :style]
        wild_props = Symbol[]
        return Component("dbc_alert", "Alert", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_alert(children::Any; kwargs...) = dbc_alert(;kwargs..., children = children)
dbc_alert(children_maker::Function; kwargs...) = dbc_alert(children_maker(); kwargs...)

