# AUTO GENERATED FILE - DO NOT EDIT

export dbc_dropdownmenuitem

"""
    dbc_dropdownmenuitem(;kwargs...)
    dbc_dropdownmenuitem(children::Any;kwargs...)
    dbc_dropdownmenuitem(children_maker::Function;kwargs...)


A DropdownMenuItem component.
Use DropdownMenuItem to build up the content of a DropdownMenu.
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
- `active` (Bool; optional): Style this item as 'active'.
- `disabled` (Bool; optional): Style this item as 'disabled'.
- `divider` (Bool; optional): Set to True if this entry is a divider. Typically, it will have
no children.
- `header` (Bool; optional): Set to True if this is a header, rather than a conventional
menu item.
- `href` (String; optional): Pass a URL (relative or absolute) to make the menu entry a link.
- `toggle` (Bool; optional): Whether to toggle the DropdownMenu on click. Default: True.
- `external_link` (Bool; optional): If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.
- `n_clicks` (Real; optional): An integer that represents the number of times
that this element has been clicked on.
- `n_clicks_timestamp` (Real; optional): An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `target` (String; optional): Target attribute to pass on to the link. Only applies to external links.
"""
function dbc_dropdownmenuitem(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :active, :disabled, :divider, :header, :href, :toggle, :external_link, :n_clicks, :n_clicks_timestamp, :loading_state, :target]
        wild_props = Symbol[]
        return Component("dbc_dropdownmenuitem", "DropdownMenuItem", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_dropdownmenuitem(children::Any; kwargs...) = dbc_dropdownmenuitem(;kwargs..., children = children)
dbc_dropdownmenuitem(children_maker::Function; kwargs...) = dbc_dropdownmenuitem(children_maker(); kwargs...)

