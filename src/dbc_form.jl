# AUTO GENERATED FILE - DO NOT EDIT

export dbc_form

"""
    dbc_form(;kwargs...)
    dbc_form(children::Any;kwargs...)
    dbc_form(children_maker::Function;kwargs...)


A Form component.
The Form component can be used to organise collections of input components
and apply consistent styling.
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
- `action` (String; optional): The URI of a program that processes the information submitted via the form.
- `method` (a value equal to: "GET", "POST"; optional): Defines which HTTP method to use when submitting the form. Can be GET
(default) or POST.
- `inline` (Bool; optional): Use inline=True to apply the `form-inline` class, allowing you to display
a series of labels, form controls, and buttons on a single horizontal row.
Form controls within inline forms vary slightly from their default states.
- `n_submit` (Real; optional): Number of times the `Enter` key was pressed while the input had focus.
- `n_submit_timestamp` (Real; optional): Last time that `Enter` was pressed.
- `prevent_default_on_submit` (Bool; optional): The form calls preventDefault on submit events. Use submit_allow_default
to override this and not call preventDefault on submit.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_form(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :action, :method, :inline, :n_submit, :n_submit_timestamp, :prevent_default_on_submit, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_form", "Form", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_form(children::Any; kwargs...) = dbc_form(;kwargs..., children = children)
dbc_form(children_maker::Function; kwargs...) = dbc_form(children_maker(); kwargs...)

