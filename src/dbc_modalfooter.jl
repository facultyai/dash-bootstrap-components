# AUTO GENERATED FILE - DO NOT EDIT

export dbc_modalfooter

"""
    dbc_modalfooter(;kwargs...)
    dbc_modalfooter(children::Any;kwargs...)
    dbc_modalfooter(children_maker::Function;kwargs...)


A ModalFooter component.
Add a footer to any modal.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `tag` (String; optional): HTML tag to use for the ModalFooter, default: div
"""
function dbc_modalfooter(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :tag]
        wild_props = Symbol[]
        return Component("dbc_modalfooter", "ModalFooter", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_modalfooter(children::Any; kwargs...) = dbc_modalfooter(;kwargs..., children = children)
dbc_modalfooter(children_maker::Function; kwargs...) = dbc_modalfooter(children_maker(); kwargs...)

