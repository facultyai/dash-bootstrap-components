# AUTO GENERATED FILE - DO NOT EDIT

export dbc_navbar

"""
    dbc_navbar(;kwargs...)
    dbc_navbar(children::Any;kwargs...)
    dbc_navbar(children_maker::Function;kwargs...)


A Navbar component.
The Navbar component can be used to make fully customisable navbars.
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
- `light` (Bool; optional): Applies the `navbar-light` class to the Navbar, causing text in the children
of the Navbar to use dark colors for contrast / visibility.
- `dark` (Bool; optional): Applies the `navbar-dark` class to the Navbar, causing text in the children
of the Navbar to use light colors for contrast / visibility.
- `fixed` (String; optional): Fix the navbar's position at the top or bottom of the page, options: top, bottom
- `sticky` (String; optional): Stick the navbar to the top or the bottom of the viewport, options: top, bottom

With `sticky`, the navbar remains in the viewport when you scroll. By
contrast, with `fixed`, the navbar will remain at the top or bottom of
the page.
- `color` (String; optional): Sets the color of the Navbar. Main options are primary, light and dark, default light.

You can also choose one of the other contextual classes provided by Bootstrap
(secondary, success, warning, danger, info, white) or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)
- `role` (String; optional): The ARIA role attribute.
- `tag` (String; optional): HTML tag to use for the Navbar, default 'nav'
- `expand` (Bool | String; optional): Specify screen size at which to expand the menu bar, e.g. sm, md, lg etc.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_navbar(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :light, :dark, :fixed, :sticky, :color, :role, :tag, :expand, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_navbar", "Navbar", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_navbar(children::Any; kwargs...) = dbc_navbar(;kwargs..., children = children)
dbc_navbar(children_maker::Function; kwargs...) = dbc_navbar(children_maker(); kwargs...)

