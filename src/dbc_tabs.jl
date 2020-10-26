# AUTO GENERATED FILE - DO NOT EDIT

export dbc_tabs

"""
    dbc_tabs(;kwargs...)
    dbc_tabs(children::Any;kwargs...)
    dbc_tabs(children_maker::Function;kwargs...)


A Tabs component.
Create Bootstrap styled tabs. Use the `active_tab` property to set, or get
get the currently active tab in a callback.
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
- `active_tab` (String; optional): The tab_id of the currently active tab. If tab_id has not been specified
for the active tab, this will default to tab-i, where i is the index
(starting from 0) of the tab.
- `card` (Bool; optional): Set to True if using tabs inside a CardHeader.
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
- `persisted_props` (Array of a value equal to: 'active_tab's; optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.
- `persistence_type` (a value equal to: 'local', 'session', 'memory'; optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
"""
function dbc_tabs(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :active_tab, :card, :loading_state, :persistence, :persisted_props, :persistence_type]
        wild_props = Symbol[]
        return Component("dbc_tabs", "Tabs", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_tabs(children::Any; kwargs...) = dbc_tabs(;kwargs..., children = children)
dbc_tabs(children_maker::Function; kwargs...) = dbc_tabs(children_maker(); kwargs...)

