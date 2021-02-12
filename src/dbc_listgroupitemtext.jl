# AUTO GENERATED FILE - DO NOT EDIT

export dbc_listgroupitemtext

"""
    dbc_listgroupitemtext(;kwargs...)
    dbc_listgroupitemtext(children::Any;kwargs...)
    dbc_listgroupitemtext(children_maker::Function;kwargs...)


A ListGroupItemText component.
Apply consistent styling to text within a list group.
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
- `tag` (String; optional): HTML tag to use for the text, default: p
- `color` (String; optional): Text color, options: primary, secondary, success, warning, danger, info,
muted, light, dark, body, white, black-50, white-50.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_listgroupitemtext(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :tag, :color, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_listgroupitemtext", "ListGroupItemText", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_listgroupitemtext(children::Any; kwargs...) = dbc_listgroupitemtext(;kwargs..., children = children)
dbc_listgroupitemtext(children_maker::Function; kwargs...) = dbc_listgroupitemtext(children_maker(); kwargs...)

