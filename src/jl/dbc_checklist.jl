# AUTO GENERATED FILE - DO NOT EDIT

export dbc_checklist

"""
    dbc_checklist(;kwargs...)

A Checklist component.
Checklist is a component that encapsulates several checkboxes.
The values and labels of the checklist is specified in the `options`
property and the checked items are specified with the `value` property.
Each checkbox is rendered as an input / label pair.

If `Checklist` is given an `id` (which is necessary for use in callbacks) it
will use Bootstrap's custom checkbox style, which hides the native browser
checkbox and renders a custom CSS alternative. See the Bootstrap docs for
details.

https://getbootstrap.com/docs/4.4/components/forms/#checkboxes-and-radios-1
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components in callbacks.
The ID needs to be unique across all of the components in an app.
- `className` (String; optional): The class of the container (div)
- `custom` (Bool; optional): RadioItems uses custom radio buttons by default. To use native radios set
custom to False.
- `inline` (Bool; optional): Arrange Checklist inline
- `inputClassName` (String; optional): The class of the <input> checkbox element
- `inputStyle` (Dict; optional): The style of the <input> checkbox element. Only used if custom=False
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `labelCheckedClassName` (String; optional): Additional CSS classes to apply to the <label> element when the
corresponding checkbox is checked.
- `labelCheckedStyle` (Dict; optional): Additional inline style arguments to apply to <label> elements on checked
items.
- `labelClassName` (String; optional): CSS classes to apply to the <label> element for each item.
- `labelStyle` (Dict; optional): Inline style arguments to apply to the <label> element for each item.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `name` (String; optional): The name of the control, which is submitted with the form data.
- `options` (optional): An array of options. options has the following type: Array of lists containing elements 'label', 'value', 'disabled', 'input_id', 'label_id'.
Those elements have the following types:
  - `label` (String | Real; required): The checkbox's label
  - `value` (String | Real; required): The value of the checkbox. This value corresponds to the items
specified in the `value` property.
  - `disabled` (Bool; optional): If true, this checkbox is disabled and can't be clicked on.
  - `input_id` (String; optional): id for this option's input, can be used to attach tooltips or apply
CSS styles
  - `label_id` (String; optional): id for this option's label, can be used to attach tooltips or apply
CSS styless
- `persisted_props` (Array of a value equal to: 'value's; optional): Properties whose user interactions will persist after refreshing the
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
- `style` (Dict; optional): The style of the container (div)
- `switch` (Bool; optional): Set to True to render toggle-like switches instead of checkboxes. Ignored
if custom=False
- `value` (Array of String | Reals; optional): The currently selected value
"""
function dbc_checklist(; kwargs...)
        available_props = Symbol[:id, :className, :custom, :inline, :inputClassName, :inputStyle, :key, :labelCheckedClassName, :labelCheckedStyle, :labelClassName, :labelStyle, :loading_state, :name, :options, :persisted_props, :persistence, :persistence_type, :style, :switch, :value]
        wild_props = Symbol[]
        return Component("dbc_checklist", "Checklist", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

