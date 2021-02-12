# AUTO GENERATED FILE - DO NOT EDIT

export dbc_input

"""
    dbc_input(;kwargs...)

An Input component.
A basic HTML input control for entering text, numbers, or passwords, with
Bootstrap styles automatically applied. This component is much like its
counterpart in dash_core_components, but with a few additions such as the
`valid` and `invalid` props for providing user feedback.

Note that checkbox and radio types are supported through
the Checklist and RadioItems component. Dates, times, and file uploads
are supported through separate components in other libraries.
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `type` (a value equal to: "text", 'number', 'password', 'email', 'range', 'search', 'tel', 'url', 'hidden'; optional): The type of control to render
- `value` (String | Real; optional): The value of the Input
- `disabled` (Bool; optional): Set to True to disable the Input.
- `autoComplete` (String; optional): This attribute indicates whether the value of the control can be
automatically completed by the browser.
- `autoFocus` (a value equal to: 'autoFocus', 'autofocus', 'AUTOFOCUS' | Bool; optional): The element should be automatically focused after the page loaded.
autoFocus is an HTML boolean attribute - it is enabled by a boolean or
'autoFocus'. Alternative capitalizations `autofocus` & `AUTOFOCUS`
are also acccepted.
- `inputMode` (a value equal to: "verbatim", "latin", "latin-name", "latin-prose", "full-width-latin", "kana", "katakana", "numeric", "tel", "email", "url"; optional): Provides a hint to the browser as to the type of data that might be
entered by the user while editing the element or its contents.
- `list` (String; optional): Identifies a list of pre-defined options to suggest to the user.
The value must be the id of a <datalist> element in the same document.
The browser displays only options that are valid values for this
input element.
This attribute is ignored when the type attribute's value is
hidden, checkbox, radio, file, or a button type.
- `max` (String | Real; optional): The maximum (numeric or date-time) value for this item, which must not be
less than its minimum (min attribute) value.
- `maxLength` (String | Real; optional): If the value of the type attribute is text, email, search, password, tel,
or url, this attribute specifies the maximum number of characters
(in UTF-16 code units) that the user can enter. For other control types,
it is ignored. It can exceed the value of the size attribute. If it is not
specified, the user can enter an unlimited number of characters.
Specifying a negative number results in the default behavior (i.e. the
user can enter an unlimited number of characters). The constraint is
evaluated only when the value of the attribute has been changed.
- `min` (String | Real; optional): The minimum (numeric or date-time) value for this item, which must not be
greater than its maximum (max attribute) value.
- `minLength` (String | Real; optional): If the value of the type attribute is text, email, search, password, tel,
or url, this attribute specifies the minimum number of characters (in
Unicode code points) that the user can enter. For other control types, it
is ignored.
- `step` (String | Real; optional): Works with the min and max attributes to limit the increments at which a
numeric or date-time value can be set. It can be the string any or a
positive floating point number. If this attribute is not set to any, the
control accepts only values at multiples of the step value greater than
the minimum.
- `size` (String; optional): The initial size of the control. This value is in pixels unless the value
of the type attribute is text or password, in which case it is an integer
number of characters. This attribute applies only when the type attribute
is set to text, search, tel, url, email, or password, otherwise it is
ignored. In addition, the size must be greater than zero. If you do not
specify a size, a default value of 20 is used.
- `bs_size` (String; optional): Set the size of the Input. Options: 'sm' (small), 'md' (medium)
or 'lg' (large). Default is 'md'.
- `valid` (Bool; optional): Apply valid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=True to display.
- `invalid` (Bool; optional): Apply invalid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=False to display.
- `plaintext` (Bool; optional): Set to true for a readonly input styled as plain text with the default
form field styling removed and the correct margins and padding preserved.
- `placeholder` (String | Real; optional): A hint to the user of what can be entered in the control . The placeholder
text must not contain carriage returns or line-feeds. Note: Do not use the
placeholder attribute instead of a <label> element, their purposes are
different. The <label> attribute describes the role of the form element
(i.e. it indicates what kind of information is expected), and the
placeholder attribute is a hint about the format that the content should
take. There are cases in which the placeholder attribute is never
displayed to the user, so the form must be understandable without it.
- `name` (String; optional): The name of the control, which is submitted with the form data.
- `pattern` (String; optional): A regular expression that the control's value is checked against. The
pattern must match the entire value, not just some subset. Use the title
attribute to describe the pattern to help the user. This attribute applies
when the value of the type attribute is text, search, tel, url, email, or
password, otherwise it is ignored. The regular expression language is the
same as JavaScript RegExp algorithm, with the 'u' parameter that makes it
treat the pattern as a sequence of unicode code points. The pattern is not
surrounded by forward slashes.
- `n_submit` (Real; optional): Number of times the `Enter` key was pressed while the input had focus.
- `n_submit_timestamp` (Real; optional): Last time that `Enter` was pressed.
- `n_blur` (Real; optional): Number of times the input lost focus.
- `n_blur_timestamp` (Real; optional): Last time the input lost focus.
- `debounce` (Bool; optional): If true, changes to input will be sent back to the Dash server
only when the enter key is pressed or when the component loses
focus.  If it's false, it will sent the value back on every
change.
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
- `tabIndex` (String; optional): Overrides the browser's default tab order and follows the one specified instead.
"""
function dbc_input(; kwargs...)
        available_props = Symbol[:id, :style, :className, :key, :type, :value, :disabled, :autoComplete, :autoFocus, :inputMode, :list, :max, :maxLength, :min, :minLength, :step, :size, :bs_size, :valid, :invalid, :plaintext, :placeholder, :name, :pattern, :n_submit, :n_submit_timestamp, :n_blur, :n_blur_timestamp, :debounce, :loading_state, :persistence, :persisted_props, :persistence_type, :tabIndex]
        wild_props = Symbol[]
        return Component("dbc_input", "Input", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

