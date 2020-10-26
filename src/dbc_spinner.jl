# AUTO GENERATED FILE - DO NOT EDIT

export dbc_spinner

"""
    dbc_spinner(;kwargs...)
    dbc_spinner(children::Any;kwargs...)
    dbc_spinner(children_maker::Function;kwargs...)


A Spinner component.
Render Bootstrap style loading spinners using only CSS.

This component can be used standalone to render a loading spinner, or it can
be used like `dash_core_components.Loading` by giving it children. In the
latter case the chosen spinner will display while the children are loading.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component.
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `fullscreen_style` (Dict; optional): Defines CSS styles for the container when fullscreen=True.
- `spinner_style` (Dict; optional): Inline CSS styles to apply to the spinner.
- `fullscreenClassName` (String; optional): Often used with CSS to style elements with common properties.
- `spinnerClassName` (String; optional): CSS class names to apply to the spinner.
- `color` (String; optional): Sets the color of the Spinner. Main options are Bootstrap contextual
colors: primary, secondary, success, info, warning, danger, light, dark,
body, muted, white-50, black-50. You can also specify any valid CSS color
of your choice (e.g. a hex code, a decimal code or a CSS color name)

If not specified will default to text colour.
- `type` (String; optional): The type of spinner. Options 'border' and 'grow'. Default 'border'.
- `size` (String; optional): The spinner size. Options are 'sm', 'md' and 'lg'.
- `fullscreen` (Bool; optional): Boolean that determines if the loading spinner will be displayed
full-screen or not.
"""
function dbc_spinner(; kwargs...)
        available_props = Symbol[:children, :id, :fullscreen_style, :spinner_style, :fullscreenClassName, :spinnerClassName, :color, :type, :size, :fullscreen]
        wild_props = Symbol[]
        return Component("dbc_spinner", "Spinner", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_spinner(children::Any; kwargs...) = dbc_spinner(;kwargs..., children = children)
dbc_spinner(children_maker::Function; kwargs...) = dbc_spinner(children_maker(); kwargs...)

