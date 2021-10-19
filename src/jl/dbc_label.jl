# AUTO GENERATED FILE - DO NOT EDIT

export dbc_label

"""
    dbc_label(;kwargs...)
    dbc_label(children::Any;kwargs...)
    dbc_label(children_maker::Function;kwargs...)


A Label component.
A component for adding labels to inputs in forms with added sizing controls.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `align` (a value equal to: 'start', 'center', 'end'; optional): Set vertical alignment of the label, options: 'start', 'center', 'end',
default: 'center'
- `check` (Bool; optional): Set to True when using to label a Checkbox or RadioButton.
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `color` (String; optional): Text color, options: primary, secondary, success, warning, danger, info,
muted, light, dark, body, white, black-50, white-50 or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name).
- `hidden` (Bool; optional): Hide label from UI, but allow it to be discovered by screen-readers.
- `html_for` (String; optional): Set the `for` attribute of the label to bind it to a particular element
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `lg` (optional): Specify label width on a large screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `md` (optional): Specify label width on a medium screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.
- `size` (String; optional): Set size of label. Options 'sm', 'md' (default) or 'lg'.
- `sm` (optional): Specify label width on a small screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `width` (optional): Specify width of label for use in grid layouts. Accepts the same values
as the Col component.
- `xl` (optional): Specify label width on an extra large screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.
- `xs` (optional): Specify label width on extra small screen

Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
dictionary with keys 'offset', 'order', 'size'. See the documentation for
more details.
"""
function dbc_label(; kwargs...)
        available_props = Symbol[:children, :id, :align, :check, :className, :class_name, :color, :hidden, :html_for, :key, :lg, :loading_state, :md, :size, :sm, :style, :width, :xl, :xs]
        wild_props = Symbol[]
        return Component("dbc_label", "Label", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_label(children::Any; kwargs...) = dbc_label(;kwargs..., children = children)
dbc_label(children_maker::Function; kwargs...) = dbc_label(children_maker(); kwargs...)

