# AUTO GENERATED FILE - DO NOT EDIT

export dbc_offcanvas

"""
    dbc_offcanvas(;kwargs...)
    dbc_offcanvas(children::Any;kwargs...)
    dbc_offcanvas(children_maker::Function;kwargs...)


An Offcanvas component.
Create a toggleable hidden sidebar using the Offcanvas component.
Toggle the visibility with the `is_open` prop.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `autoFocus` (Bool; optional): **DEPRECATED** Use `autofocus` instead

	Puts the focus on the modal when initialized.
- `autofocus` (Bool; optional): Puts the focus on the offcanvas when initialized.
- `backdrop` (Bool | a value equal to: 'static'; optional): Includes an offcanvas-backdrop element. Alternatively, specify 'static' for a
backdrop which doesn't close the modal on click.
- `backdropClassName` (String; optional): **DEPRECATED** - Use backdrop_class_name instead.

CSS class to apply to the backdrop.
- `backdrop_class_name` (String; optional): CSS class to apply to the backdrop.
- `className` (String; optional): **DEPRECATED** - Use class_name instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `close_button` (Bool; optional): Specify whether the Component should contain a close button
in the header
- `is_open` (Bool; optional): Whether offcanvas is currently open.
- `keyboard` (Bool; optional): Close the offcanvas when escape key is pressed.
- `labelledBy` (String; optional): **DEPRECATED** Use `labelledby` instead

The ARIA labelledby attribute
- `labelledby` (String; optional): The ARIA labelledby attribute
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `placement` (a value equal to: 'start', 'end', 'top', 'bottom'; optional): Which side of the viewport the offcanvas will appear from.
- `scrollable` (Bool; optional): Allow body scrolling while offcanvas is open.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `title` (a list of or a singular dash component, string or number; optional): The header title
"""
function dbc_offcanvas(; kwargs...)
        available_props = Symbol[:children, :id, :autoFocus, :autofocus, :backdrop, :backdropClassName, :backdrop_class_name, :className, :class_name, :close_button, :is_open, :keyboard, :labelledBy, :labelledby, :loading_state, :placement, :scrollable, :style, :title]
        wild_props = Symbol[]
        return Component("dbc_offcanvas", "Offcanvas", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_offcanvas(children::Any; kwargs...) = dbc_offcanvas(;kwargs..., children = children)
dbc_offcanvas(children_maker::Function; kwargs...) = dbc_offcanvas(children_maker(); kwargs...)

