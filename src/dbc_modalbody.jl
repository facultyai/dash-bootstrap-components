# AUTO GENERATED FILE - DO NOT EDIT

export dbc_modalbody

"""
    dbc_modalbody(;kwargs...)
    dbc_modalbody(children::Any;kwargs...)
    dbc_modalbody(children_maker::Function;kwargs...)


A ModalBody component.
Use this component to add consistent padding to the body (main content) of
your Modals.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `tag` (String; optional): HTML tag to use for the ModalBody, default: div
"""
function dbc_modalbody(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :tag]
        wild_props = Symbol[]
        return Component("dbc_modalbody", "ModalBody", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_modalbody(children::Any; kwargs...) = dbc_modalbody(;kwargs..., children = children)
dbc_modalbody(children_maker::Function; kwargs...) = dbc_modalbody(children_maker(); kwargs...)

