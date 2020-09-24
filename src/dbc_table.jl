# AUTO GENERATED FILE - DO NOT EDIT

export dbc_table

"""
    dbc_table(;kwargs...)
    dbc_table(children::Any;kwargs...)
    dbc_table(children_maker::Function;kwargs...)


A Table component.
A component for applying Bootstrap styles to HTML tables. Use this as a
drop-in replacement for `html.Table`, or generate a table from a Pandas
DataFrame using `dbc.Table.from_dataframe`.
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
- `tag` (String; optional): HTML tag to use for the table, default: table
- `size` (String; optional): Specify table size, options: 'sm', 'md', 'lg'
- `bordered` (Bool; optional): Apply the `table-bordered` class which adds borders on all sides of the
table and cells.
- `borderless` (Bool; optional): Apply the `table-borderless` class which removes all borders from the
table and cells.
- `striped` (Bool; optional): Apply the `table-striped` class which applies 'zebra striping' to rows in
the table body.
- `dark` (Bool; optional): Apply the `table-dark` class for dark cell backgrounds and light text.
- `hover` (Bool; optional): Apply the `table-hover` class which enables a hover state on table rows
within the table body.
- `responsive` (Bool | String; optional): Set to True or one of the breakpoints 'sm', 'md', 'lg', 'xl' to make table
scroll horizontally at lower breakpoints.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_table(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :tag, :size, :bordered, :borderless, :striped, :dark, :hover, :responsive, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_table", "Table", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_table(children::Any; kwargs...) = dbc_table(;kwargs..., children = children)
dbc_table(children_maker::Function; kwargs...) = dbc_table(children_maker(); kwargs...)

