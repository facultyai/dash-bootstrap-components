# AUTO GENERATED FILE - DO NOT EDIT

export dbc_formgroup

"""
    dbc_formgroup(;kwargs...)
    dbc_formgroup(children::Any;kwargs...)
    dbc_formgroup(children_maker::Function;kwargs...)


A FormGroup component.
A component for grouping together inputs, labels, text and feedback.
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
- `row` (Bool; optional): Apply row class to FormGroup to allow labels and inputs to be displayed
horizontally in a row.
- `check` (Bool; optional): Apply `form-check` class instead of `form-group`. Useful when positioning
labels with checkbox / radio inputs. Usually it will be better to use the
pre-built dbc.Checklist or dbc.RadioItems components.
- `inline` (Bool; optional): If check is True, apply the `form-check-inline` class in addition to
`form-check`. If you want to make an inline list of checkboxes / radios
we recommend using either dbc.Checklist or dbc.RadioItems with inline=True

This prop has no effect if check=False.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_formgroup(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :row, :check, :inline, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_formgroup", "FormGroup", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_formgroup(children::Any; kwargs...) = dbc_formgroup(;kwargs..., children = children)
dbc_formgroup(children_maker::Function; kwargs...) = dbc_formgroup(children_maker(); kwargs...)

