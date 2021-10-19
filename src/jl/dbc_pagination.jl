# AUTO GENERATED FILE - DO NOT EDIT

export dbc_pagination

"""
    dbc_pagination(;kwargs...)

A Pagination component.
The container for presentational components for building a pagination UI.
Individual pages should be added as children using the `PaginationItem`
component.
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `active_page` (Real; optional): The currently active page
- `className` (String; optional): **DEPRECATED** - Use class_name instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `first_last` (Bool; optional): When True, this will display a first and last icon at the beginning
and end of the component.
- `fully_expanded` (Bool; optional): When True, this will display all numbers between `min_value` and
`max_value`.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `max_value` (Real; required): Maximum (rightmost) value to appear in the pagination. Must be defined.
If the `min_value` and `step` together cannot reach this value, then the
next stepped value is used as the maximum.
- `min_value` (Real; optional): Minimum (leftmost) value to appear in the pagination.
- `previous_next` (Bool; optional): When True, this will display a previous and next icon before and after
the individual page numbers.
- `size` (a value equal to: 'sm', 'lg'; optional): Set the size of all page items in the pagination.
- `step` (Real; optional): Page increment step.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
"""
function dbc_pagination(; kwargs...)
        available_props = Symbol[:id, :active_page, :className, :class_name, :first_last, :fully_expanded, :loading_state, :max_value, :min_value, :previous_next, :size, :step, :style]
        wild_props = Symbol[]
        return Component("dbc_pagination", "Pagination", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

