# AUTO GENERATED FILE - DO NOT EDIT

export dbc_inputgrouptext

"""
    dbc_inputgrouptext(;kwargs...)
    dbc_inputgrouptext(children::Any;kwargs...)
    dbc_inputgrouptext(children_maker::Function;kwargs...)


An InputGroupText component.
Use for wrapping text in InputGroups.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component.
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_inputgrouptext(; kwargs...)
        available_props = Symbol[:children, :id, :style, :key, :className, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_inputgrouptext", "InputGroupText", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_inputgrouptext(children::Any; kwargs...) = dbc_inputgrouptext(;kwargs..., children = children)
dbc_inputgrouptext(children_maker::Function; kwargs...) = dbc_inputgrouptext(children_maker(); kwargs...)

