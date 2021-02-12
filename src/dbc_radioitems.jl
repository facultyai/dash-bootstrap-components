# AUTO GENERATED FILE - DO NOT EDIT

export dbc_radioitems

"""
    dbc_radioitems(;kwargs...)

A RadioItems component.
RadioItems is a component that encapsulates several radio item inputs.
The values and labels of the RadioItems is specified in the `options`
property and the seleced item is specified with the `value` property.
Each radio item is rendered as an input and associated label which are
siblings of each other.
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components in callbacks.
The ID needs to be unique across all of the components in an app.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `options` (Array; optional): An array of options
- `value` (String | Real; optional): The currently selected value
- `style` (Dict; optional): The style of the container (div)
- `className` (String; optional): The class of the container (div)
- `inputStyle` (Dict; optional): The style of the <input> radio element
- `inputClassName` (String; optional): The class of the <input> radio element
- `labelStyle` (Dict; optional): Inline style arguments to apply to the <label> element for each item.
- `labelCheckedStyle` (Dict; optional): Additional inline style arguments to apply to <label> elements on checked
items.
- `labelClassName` (String; optional): CSS classes to apply to the <label> element for each item.
- `labelCheckedClassName` (String; optional): Additional CSS classes to apply to the <label> element when the
corresponding radio is checked.
- `inline` (Bool; optional): Arrange RadioItems inline
- `switch` (Bool; optional): Set to True to render toggle-like switches instead of radios. Ignored if
custom=False
- `custom` (Bool; optional): RadioItems uses custom radio buttons by default. To use native radios set
custom to False.
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
- `persisted_props` (Array of a value equal to: 'value's; optional): Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.
- `persistence_type` (a value equal to: 'local', 'session', 'memory'; optional): Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.
- `name` (String; optional): The name of the control, which is submitted with the form data.
"""
function dbc_radioitems(; kwargs...)
        available_props = Symbol[:id, :key, :options, :value, :style, :className, :inputStyle, :inputClassName, :labelStyle, :labelCheckedStyle, :labelClassName, :labelCheckedClassName, :inline, :switch, :custom, :loading_state, :persistence, :persisted_props, :persistence_type, :name]
        wild_props = Symbol[]
        return Component("dbc_radioitems", "RadioItems", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

