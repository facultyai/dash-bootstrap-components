# AUTO GENERATED FILE - DO NOT EDIT

export dbc_row

"""
    dbc_row(;kwargs...)
    dbc_row(children::Any;kwargs...)
    dbc_row(children_maker::Function;kwargs...)


A Row component.
Row is one of the core layout components in Bootstrap. Build up your layout
as a series of rows of columns. Row has arguments for controlling the
vertical and horizontal alignment of its children, as well as the spacing
between columns.
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
- `no_gutters` (Bool; optional): Remove the "gutters" between columns in this row.
see https://getbootstrap.com/docs/4.0/layout/grid/#no-gutters
- `align` (a value equal to: 'start', 'center', 'end', 'stretch', 'baseline'; optional): Set vertical alignment of columns in this row. Options are 'start',
'center', 'end', 'stretch' and 'baseline'.
- `justify` (a value equal to: 'start', 'center', 'end', 'around', 'between'; optional): Set horizontal spacing and alignment of columns in this row. Options are
'start', 'center', 'end', 'around' and 'between'.
- `form` (Bool; optional): For use in forms. When set to True the `form-row` class is applied, which
overrides the default column gutters for a tighter, more compact layout.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_row(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :no_gutters, :align, :justify, :form, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_row", "Row", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_row(children::Any; kwargs...) = dbc_row(;kwargs..., children = children)
dbc_row(children_maker::Function; kwargs...) = dbc_row(children_maker(); kwargs...)

