# AUTO GENERATED FILE - DO NOT EDIT

export dbc_listgroup

"""
    dbc_listgroup(;kwargs...)
    dbc_listgroup(children::Any;kwargs...)
    dbc_listgroup(children_maker::Function;kwargs...)


A ListGroup component.
Bootstrap list groups are a flexible way to display a series of content. Use
in conjunction with `ListGroupItem`, `ListGroupItemHeading` and
`ListGroupItemText`.
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
- `tag` (String; optional): HTML tag to use for the list, default: ul
- `flush` (Bool; optional): When True the `list-group-flush` class is applied which removes some borders
and rounded corners from the list group in order that they can be rendered
edge-to-edge in the parent container (e.g. a Card).
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `horizontal` (Bool | String; optional): Set to True for a horizontal ListGroup, or supply one of the breakpoints
as a string for a ListGroup that is horizontal at that breakpoint and up.

Note that horizontal ListGroups cannot be combined with flush ListGroups,
so if flush is True then horizontal has no effect.
"""
function dbc_listgroup(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :tag, :flush, :loading_state, :horizontal]
        wild_props = Symbol[]
        return Component("dbc_listgroup", "ListGroup", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_listgroup(children::Any; kwargs...) = dbc_listgroup(;kwargs..., children = children)
dbc_listgroup(children_maker::Function; kwargs...) = dbc_listgroup(children_maker(); kwargs...)

