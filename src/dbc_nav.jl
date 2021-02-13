# AUTO GENERATED FILE - DO NOT EDIT

export dbc_nav

"""
    dbc_nav(;kwargs...)
    dbc_nav(children::Any;kwargs...)
    dbc_nav(children_maker::Function;kwargs...)


A Nav component.
Nav can be used to group together a collection of navigation links.
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
- `pills` (Bool; optional): Apply pill styling to nav items. Active items will be indicated by a pill.
- `card` (Bool; optional): Set to True when using Nav with pills styling inside a CardHeader.
- `fill` (Bool; optional): Expand the nav items to fill available horizontal space.
- `justified` (Bool; optional): Expand the nav items to fill available horizontal space, making sure
every nav item has the same width.
- `vertical` (Bool | String; optional): Stack NavItems vertically. Set to True for a vertical Nav on all screen
sizes, or pass one of the Bootstrap breakpoints ('xs', 'sm', 'md', 'lg',
'xl') for a Nav which is vertical at that breakpoint and above, and
horizontal on smaller screens.
- `horizontal` (a value equal to: 'start', 'center', 'end', 'between', 'around'; optional): Specify the horizontal alignment of the NavItems. Options are 'start',
'center', or 'end'.
- `navbar` (Bool; optional): Set to True if using Nav in Navbar component. This applies the `navbar-nav`
class to the Nav which uses more lightweight styles to match the parent
Navbar better.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_nav(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :pills, :card, :fill, :justified, :vertical, :horizontal, :navbar, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_nav", "Nav", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_nav(children::Any; kwargs...) = dbc_nav(;kwargs..., children = children)
dbc_nav(children_maker::Function; kwargs...) = dbc_nav(children_maker(); kwargs...)

