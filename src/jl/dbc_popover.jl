# AUTO GENERATED FILE - DO NOT EDIT

export dbc_popover

"""
    dbc_popover(;kwargs...)
    dbc_popover(children::Any;kwargs...)
    dbc_popover(children_maker::Function;kwargs...)


A Popover component.
Popover creates a toggleable overlay that can be used to provide additional
information or content to users without having to load a new page or open a
new window.

Use the `PopoverHeader` and `PopoverBody` components to control the layout
of the children.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `delay` (optional): Optionally override show/hide delays. delay has the following type: lists containing elements 'show', 'hide'.
Those elements have the following types:
  - `show` (Real; optional)
  - `hide` (Real; optional) | Real
- `flip` (Bool; optional): Whether to flip the direction of the popover if too close to the container
edge, default True.
- `hide_arrow` (Bool; optional): Hide popover arrow.
- `innerClassName` (String; optional): **DEPRECATED** Use `inner_class_name` instead

CSS class to apply to the popover.
- `inner_class_name` (String; optional): CSS class to apply to the popover.
- `is_open` (Bool; optional): Whether the Popover is open or not.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `offset` (String | Real; optional): Offset of the popover relative to its target
- `placement` (a value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'; optional): Specify popover placement.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `target` (String | Dict; optional): ID of the component to attach the popover to.
- `trigger` (String; optional): Space separated list of triggers (e.g. "click hover focus legacy"). These
specify ways in which the target component can toggle the popover. If not
specified you must toggle the popover yourself using callbacks. Options
are:
- "click": toggles the popover when the target is clicked.
- "hover": toggles the popover when the target is hovered over with the
cursor.
- "focus": toggles the popover when the target receives focus
- "legacy": toggles the popover when the target is clicked, but will also
dismiss the popover when the user clicks outside of the popover.
"""
function dbc_popover(; kwargs...)
        available_props = Symbol[:children, :id, :className, :class_name, :delay, :flip, :hide_arrow, :innerClassName, :inner_class_name, :is_open, :key, :loading_state, :offset, :placement, :style, :target, :trigger]
        wild_props = Symbol[]
        return Component("dbc_popover", "Popover", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_popover(children::Any; kwargs...) = dbc_popover(;kwargs..., children = children)
dbc_popover(children_maker::Function; kwargs...) = dbc_popover(children_maker(); kwargs...)

