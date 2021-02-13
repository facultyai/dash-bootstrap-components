# AUTO GENERATED FILE - DO NOT EDIT

export dbc_modal

"""
    dbc_modal(;kwargs...)
    dbc_modal(children::Any;kwargs...)
    dbc_modal(children_maker::Function;kwargs...)


A Modal component.
Create a toggleable dialog using the Modal component. Toggle the visibility
with the `is_open` prop.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `tag` (String; optional): HTML tag to use for the Modal, default: div
- `is_open` (Bool; optional): Whether modal is currently open.
- `centered` (Bool; optional): If true, vertically center modal on page.
- `scrollable` (Bool; optional): It true, scroll the modal body rather than the entire modal when it is too
long to all fit on the screen.
- `autoFocus` (Bool; optional): Puts the focus on the modal when initialized.
- `size` (String; optional): Set the size of the modal. Options sm, lg, xl for small, large or extra
large sized modals, or leave undefined for default size.
- `role` (String; optional): The ARIA role attribute.
- `labelledBy` (String; optional): The ARIA labelledby attribute
- `keyboard` (Bool; optional): Close the modal when escape key is pressed.
- `backdrop` (Bool | a value equal to: 'static'; optional): Includes a modal-backdrop element. Alternatively, specify 'static' for a
backdrop which doesn't close the modal on click.
- `modalClassName` (String; optional): CSS class to apply to the modal.
- `backdropClassName` (String; optional): CSS class to apply to the backdrop.
- `contentClassName` (String; optional): CSS class to apply to the modal content.
- `fade` (Bool; optional): Set to false for a modal that simply appears rather than fades into view.
- `zIndex` (Real | String; optional): Set the z-index of the modal. Default 1050.
"""
function dbc_modal(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :tag, :is_open, :centered, :scrollable, :autoFocus, :size, :role, :labelledBy, :keyboard, :backdrop, :modalClassName, :backdropClassName, :contentClassName, :fade, :zIndex]
        wild_props = Symbol[]
        return Component("dbc_modal", "Modal", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_modal(children::Any; kwargs...) = dbc_modal(;kwargs..., children = children)
dbc_modal(children_maker::Function; kwargs...) = dbc_modal(children_maker(); kwargs...)

