# AUTO GENERATED FILE - DO NOT EDIT

export dbc_accordionitem

"""
    dbc_accordionitem(;kwargs...)
    dbc_accordionitem(children::Any;kwargs...)
    dbc_accordionitem(children_maker::Function;kwargs...)


An AccordionItem component.
A component to build up the children of the accordion.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `item_id` (String; optional): Optional identifier for item used for determining which item is visible
if not specified, and AccordionItem is being used inside Accordion component, the itemId
will be set to "item-i" where i is (zero indexed) position of item in list
items pased to Accordion component.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `title` (String; optional): The title on display in the collapsed accordion item.
"""
function dbc_accordionitem(; kwargs...)
        available_props = Symbol[:children, :id, :className, :class_name, :item_id, :loading_state, :style, :title]
        wild_props = Symbol[]
        return Component("dbc_accordionitem", "AccordionItem", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_accordionitem(children::Any; kwargs...) = dbc_accordionitem(;kwargs..., children = children)
dbc_accordionitem(children_maker::Function; kwargs...) = dbc_accordionitem(children_maker(); kwargs...)

