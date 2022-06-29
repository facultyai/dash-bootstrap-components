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
- `autohide` (Bool; optional): Optionally hide popover when hovering over content - default False.
- `body` (Bool; optional): When body is `True`, the Popover will render all children in a
`PopoverBody` automatically.
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
- `innerClassName` (String; optional): **DEPRECATED** Use `inner_class_name` instead.

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
- `offset` (String | Real; optional): Offset of the popover relative to its target. The offset can be passed as
a comma separated pair of values e.g. "0,8", where the first number,
skidding, displaces the popover along the reference element. The second
number, distance, displaces the popover away from, or toward, the
reference element in the direction of its placement. A positive number
displaces it further away, while a negative number lets it overlap the
reference. See https://popper.js.org/docs/v2/modifiers/offset/ for more
info.

Alternatively, you can provide just a single 'distance' number e.g. 8 to
displace it horizontally.
- `persisted_props` (Array of a value equal to: 'is_open's; optional): Properties whose user interactions will persist after refreshing the
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
        available_props = Symbol[:children, :id, :autohide, :body, :className, :class_name, :delay, :flip, :hide_arrow, :innerClassName, :inner_class_name, :is_open, :key, :loading_state, :offset, :persisted_props, :persistence, :persistence_type, :placement, :style, :target, :trigger]
        wild_props = Symbol[]
        return Component("dbc_popover", "Popover", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_popover(children::Any; kwargs...) = dbc_popover(;kwargs..., children = children)
dbc_popover(children_maker::Function; kwargs...) = dbc_popover(children_maker(); kwargs...)

