# AUTO GENERATED FILE - DO NOT EDIT

export dbc_dropdownmenu

"""
    dbc_dropdownmenu(;kwargs...)
    dbc_dropdownmenu(children::Any;kwargs...)
    dbc_dropdownmenu(children_maker::Function;kwargs...)


A DropdownMenu component.
DropdownMenu creates an overlay useful for grouping together links and other
content to organise navigation or other interactive elements.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component.
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `label` (String; optional): Label for the DropdownMenu toggle.
- `direction` (a value equal to: 'down', 'left', 'right', 'up'; optional): Direction in which to expand the DropdownMenu. Default: 'down'.
- `right` (Bool; optional): Align the DropdownMenu along the right side of its parent. Default: False.
- `in_navbar` (Bool; optional): Set this to True if the DropdownMenu is inside a navbar. Default: False.
- `addon_type` (Bool | a value equal to: 'prepend', 'append'; optional): Set this to 'prepend' or 'append' if the DropdownMenu is being used in an input group.
- `disabled` (Bool; optional): Disable the dropdown.
- `nav` (Bool; optional): Set this to True if the DropdownMenu is inside a nav for styling consistent
with other nav items. Default: False.
- `caret` (Bool; optional): Add a caret to the DropdownMenu toggle. Default: True.
- `color` (String; optional): Set the color of the DropdownMenu toggle. Available options are: 'primary',
'secondary', 'success', 'warning', 'danger', 'info', 'link' or any valid CSS 
color of your choice (e.g. a hex code, a decimal code or a CSS color name)
Default: 'secondary'
- `toggle_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the DropdownMenu toggle.
- `toggleClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the DropdownMenu toggle.
- `bs_size` (a value equal to: 'sm', 'md', 'lg'; optional): Size of the DropdownMenu. 'sm' corresponds to small, 'md' to medium
and 'lg' to large.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `group` (Bool; optional): Set group to True if the DropdownMenu is inside a ButtonGroup.
"""
function dbc_dropdownmenu(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :label, :direction, :right, :in_navbar, :addon_type, :disabled, :nav, :caret, :color, :toggle_style, :toggleClassName, :bs_size, :loading_state, :group]
        wild_props = Symbol[]
        return Component("dbc_dropdownmenu", "DropdownMenu", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_dropdownmenu(children::Any; kwargs...) = dbc_dropdownmenu(;kwargs..., children = children)
dbc_dropdownmenu(children_maker::Function; kwargs...) = dbc_dropdownmenu(children_maker(); kwargs...)

