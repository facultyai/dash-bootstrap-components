# AUTO GENERATED FILE - DO NOT EDIT

export dbc_tooltip

"""
    dbc_tooltip(;kwargs...)
    dbc_tooltip(children::Any;kwargs...)
    dbc_tooltip(children_maker::Function;kwargs...)


A Tooltip component.
A component for adding tooltips to any element, no callbacks required!

Simply add the Tooltip to you layout, and give it a target (id of a
component to which the tooltip should be attached)
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
- `target` (String; optional): The id of the element to attach the tooltip to
- `boundaries_element` (String; optional): Boundaries for popper, can be scrollParent, window, viewport, or any DOM
element
- `hide_arrow` (Bool; optional): Hide arrow on tooltip
- `container` (String; optional): Where to inject the popper DOM node, default body
- `delay` (optional): optionally override show/hide delays - default { show: 0, hide: 250 }. delay has the following type: lists containing elements 'show', 'hide'.
Those elements have the following types:
  - `show` (Real; optional)
  - `hide` (Real; optional) | Real
- `innerClassName` (String; optional): CSS classes to apply to the inner-tooltip
- `arrowClassName` (String; optional): CSS classes to apply to the arrow-tooltip ('arrow' by default)
- `autohide` (Bool; optional): Optionally hide tooltip when hovering over tooltip content - default true
- `placement` (a value equal to: 'auto', 'auto-start', 'auto-end', 'top', 'top-start', 'top-end', 'right', 'right-start', 'right-end', 'bottom', 'bottom-start', 'bottom-end', 'left', 'left-start', 'left-end'; optional): How to place the tooltip.
- `offset` (String | Real; optional): Tooltip offset
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_tooltip(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :target, :boundaries_element, :hide_arrow, :container, :delay, :innerClassName, :arrowClassName, :autohide, :placement, :offset, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_tooltip", "Tooltip", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_tooltip(children::Any; kwargs...) = dbc_tooltip(;kwargs..., children = children)
dbc_tooltip(children_maker::Function; kwargs...) = dbc_tooltip(children_maker(); kwargs...)

