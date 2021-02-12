# AUTO GENERATED FILE - DO NOT EDIT

export dbc_textarea

"""
    dbc_textarea(;kwargs...)

A Textarea component.
A basic HTML textarea for entering multiline text based on the corresponding
component in dash-core-components
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `value` (String; optional): The value of the textarea
- `autoFocus` (String; optional): The element should be automatically focused after the page loaded.
- `cols` (String | Real; optional): Defines the number of columns in a textarea.
- `disabled` (String | Bool; optional): Indicates whether the user can interact with the element.
- `form` (String; optional): Indicates the form that is the owner of the element.
- `maxLength` (String | Real; optional): Defines the maximum number of characters allowed in the element.
- `minLength` (String | Real; optional): Defines the minimum number of characters allowed in the element.
- `name` (String; optional): Name of the element. For example used by the server to identify the fields in form submits.
- `placeholder` (String; optional): Provides a hint to the user of what can be entered in the field.
- `readOnly` (Bool | a value equal to: 'readOnly', 'readonly', 'READONLY'; optional): Indicates whether the element can be edited.
- `required` (a value equal to: 'required', 'REQUIRED' | Bool; optional): Indicates whether this element is required to fill out or not.
- `rows` (String | Real; optional): Defines the number of rows in a text area.
- `wrap` (String; optional): Indicates whether the text should be wrapped.
- `accessKey` (String; optional): Defines a keyboard shortcut to activate or add focus to the element.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `contentEditable` (String | Real; optional): Indicates whether the element's content is editable.
- `contextMenu` (String; optional): Defines the ID of a <menu> element which will serve as the element's context menu.
- `dir` (String; optional): Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl (Right-To-Left)
- `draggable` (a value equal to: 'true', 'false' | Bool; optional): Defines whether the element can be dragged.
- `hidden` (String; optional): Prevents rendering of given element, while keeping child elements, e.g. script elements, active.
- `lang` (String; optional): Defines the language used in the element.
- `spellCheck` (a value equal to: 'true', 'false' | Bool; optional): Indicates whether spell checking is allowed for the element.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `tabIndex` (String | Real; optional): Overrides the browser's default tab order and follows the one specified instead.
- `title` (String; optional): Text to be displayed in a tooltip when hovering over the element.
- `bs_size` (String; optional): Set the size of the Textarea, valid options are 'sm', 'md', or 'lg'
- `valid` (Bool; optional): Apply valid style to the Textarea for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=True to display.
- `invalid` (Bool; optional): Apply invalid style to the Textarea for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=False to display.
- `n_blur` (Real; optional): Number of times the input lost focus.
- `n_blur_timestamp` (Real; optional): Last time the input lost focus.
- `n_submit` (Real; optional): Number of times the `Enter` key was pressed while the textarea had focus.
- `n_submit_timestamp` (Real; optional): Last time that `Enter` was pressed.
- `n_clicks` (Real; optional): An integer that represents the number of times
that this element has been clicked on.
- `n_clicks_timestamp` (Real; optional): An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.
- `debounce` (Bool; optional): If true, changes to input will be sent back to the Dash server only on enter or when losing focus.
If it's false, it will sent the value back on every change.
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
"""
function dbc_textarea(; kwargs...)
        available_props = Symbol[:id, :key, :value, :autoFocus, :cols, :disabled, :form, :maxLength, :minLength, :name, :placeholder, :readOnly, :required, :rows, :wrap, :accessKey, :className, :contentEditable, :contextMenu, :dir, :draggable, :hidden, :lang, :spellCheck, :style, :tabIndex, :title, :bs_size, :valid, :invalid, :n_blur, :n_blur_timestamp, :n_submit, :n_submit_timestamp, :n_clicks, :n_clicks_timestamp, :debounce, :loading_state, :persistence, :persisted_props, :persistence_type]
        wild_props = Symbol[]
        return Component("dbc_textarea", "Textarea", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

