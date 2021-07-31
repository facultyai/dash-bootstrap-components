# AUTO GENERATED FILE - DO NOT EDIT

export dbc_select

"""
    dbc_select(;kwargs...)

A Select component.
Create a HTML select element with Bootstrap styles. Specify options as a
list of dictionaries with keys label, value and disabled.
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `bs_size` (String; optional): Set the size of the Input. Options: 'sm' (small), 'md' (medium)
or 'lg' (large). Default is 'md'.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `disabled` (Bool; optional): Set to True to disable the Select.
- `invalid` (Bool; optional): Apply invalid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=False to display.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `name` (String; optional): The name of the control, which is submitted with the form data.
- `options` (optional): An array of options for the select. options has the following type: Array of lists containing elements 'label', 'value', 'disabled', 'title'.
Those elements have the following types:
  - `label` (String | Real; required): The options's label
  - `value` (String; required): The value of the option. This value corresponds to the items
specified in the `value` property.
  - `disabled` (Bool; optional): If true, this checkbox is disabled and can't be clicked on.
  - `title` (String; optional): The HTML 'title' attribute for the option. Allows for information on
hover. For more information on this attribute, see
https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/titles
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
- `placeholder` (String; optional): Placeholder text to display before a selection is made.
- `required` (a value equal to: 'required', 'REQUIRED' | Bool; optional): This attribute specifies that the user must fill in a value before
submitting a form. It cannot be used when the type attribute is hidden,
image, or a button type (submit, reset, or button). The :optional and
:required CSS pseudo-classes will be applied to the field as appropriate.
required is an HTML boolean attribute - it is enabled by a boolean or
'required'. Alternative capitalizations `REQUIRED`
are also acccepted.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `valid` (Bool; optional): Apply valid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=True to display.
- `value` (String | Real; optional): The value of the currently selected option.
"""
function dbc_select(; kwargs...)
        available_props = Symbol[:id, :bs_size, :className, :disabled, :invalid, :key, :name, :options, :persisted_props, :persistence, :persistence_type, :placeholder, :required, :style, :valid, :value]
        wild_props = Symbol[]
        return Component("dbc_select", "Select", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

