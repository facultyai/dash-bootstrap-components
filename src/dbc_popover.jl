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
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `placement` (a value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'; optional): Specify popover placement.
- `target` (String; optional): ID of the component to attach the popover to.
- `container` (String; optional): Where to inject the popper DOM node, default body.
- `is_open` (Bool; optional): Whether the Popover is open or not.
- `hide_arrow` (Bool; optional): Hide popover arrow.
- `innerClassName` (String; optional): CSS class to apply to the popover.
- `delay` (optional): Optionally override show/hide delays - default {show: 0, hide: 250}. delay has the following type: lists containing elements 'show', 'hide'.
Those elements have the following types:
  - `show` (Real; optional)
  - `hide` (Real; optional) | Real
- `offset` (String | Real; optional): Popover offset.
- `flip` (Bool; optional): Whether to flip the direction of the popover if too close to the container
edge, default True.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_popover(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :placement, :target, :container, :is_open, :hide_arrow, :innerClassName, :delay, :offset, :flip, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_popover", "Popover", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_popover(children::Any; kwargs...) = dbc_popover(;kwargs..., children = children)
dbc_popover(children_maker::Function; kwargs...) = dbc_popover(children_maker(); kwargs...)

