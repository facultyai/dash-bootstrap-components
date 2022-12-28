# AUTO GENERATED FILE - DO NOT EDIT

export dbc_placeholder

"""
    dbc_placeholder(;kwargs...)
    dbc_placeholder(children::Any;kwargs...)
    dbc_placeholder(children_maker::Function;kwargs...)


A Placeholder component.
Use loading Placeholders for your components or pages to indicate
something may still be loading.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component.
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `animation` (a value equal to: 'glow', 'wave'; optional): Changes the animation of the placeholder.
- `button` (Bool; optional): Show as a button shape
- `className` (String; optional): **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `color` (String; optional): Background color, options: primary, secondary, success, info, warning, danger,
light, dark.
- `delay_hide` (Real; optional): When using the placeholder as a loading placeholder, add a time delay
(in ms) to the placeholder being removed to prevent flickering.
- `delay_show` (Real; optional): When using the placeholder as a loading placeholder, add a time delay
(in ms) to the placeholder being shown after the loading_state is set to
true.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `lg` (Real; optional): Specify placeholder behaviour on a large screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive.
See the documentation for more details.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `md` (Real; optional): Specify placeholder behaviour on a medium screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive.
See the documentation for more details.
- `show_initially` (Bool; optional): Whether the Placeholder should show on app start-up before the loading
state has been determined. Default True.
- `size` (a value equal to: 'xs', 'sm', 'lg'; optional): Component size variations. Only valid when `button=false`.
- `sm` (Real; optional): Specify placeholder behaviour on a small screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive.
See the documentation for more details.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `xl` (Real; optional): Specify placeholder behaviour on an extra large screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive.
See the documentation for more details.
- `xs` (Real; optional): Specify placeholder behaviour on an extra small screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive.
See the documentation for more details.
- `xxl` (Real; optional): Specify placeholder behaviour on an extra extra large screen.

Valid arguments are boolean, an integer in the range 1-12 inclusive.
See the documentation for more details.
"""
function dbc_placeholder(; kwargs...)
        available_props = Symbol[:children, :id, :animation, :button, :className, :class_name, :color, :delay_hide, :delay_show, :key, :lg, :loading_state, :md, :show_initially, :size, :sm, :style, :xl, :xs, :xxl]
        wild_props = Symbol[]
        return Component("dbc_placeholder", "Placeholder", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_placeholder(children::Any; kwargs...) = dbc_placeholder(;kwargs..., children = children)
dbc_placeholder(children_maker::Function; kwargs...) = dbc_placeholder(children_maker(); kwargs...)

