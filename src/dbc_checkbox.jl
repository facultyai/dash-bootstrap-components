# AUTO GENERATED FILE - DO NOT EDIT

export dbc_checkbox

"""
    dbc_checkbox(;kwargs...)

A Checkbox component.
Creates a single checkbox input. Use the `checked` prop in your callbacks.
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `checked` (Bool; optional): Whether Checkbox has been checked or not
- `className` (String; optional): The class of the container (div)
- `style` (Dict; optional): The style of the container (div)
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `persistence` (Bool | String | Real; optional): Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.
- `persisted_props` (Array of a value equal to: 'checked's; optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.
- `persistence_type` (a value equal to: 'local', 'session', 'memory'; optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
- `disabled` (Bool; optional): Disabled the Checkbox
- `name` (String; optional): The name of the control, which is submitted with the form data.
"""
function dbc_checkbox(; kwargs...)
        available_props = Symbol[:id, :checked, :className, :style, :key, :loading_state, :persistence, :persisted_props, :persistence_type, :disabled, :name]
        wild_props = Symbol[]
        return Component("dbc_checkbox", "Checkbox", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

