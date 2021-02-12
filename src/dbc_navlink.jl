# AUTO GENERATED FILE - DO NOT EDIT

export dbc_navlink

"""
    dbc_navlink(;kwargs...)
    dbc_navlink(children::Any;kwargs...)
    dbc_navlink(children_maker::Function;kwargs...)


A NavLink component.
Add a link to a `Nav`. Can be used as a child of `NavItem` or of `Nav`
directly.
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
- `href` (String; optional): The URL of the linked resource.
- `active` (Bool | a value equal to: 'partial', 'exact'; optional): Apply 'active' style to this component. Set to "exact" to automatically
toggle active status when the current pathname matches href, or to
"partial" to automatically toggle on a partial match. Assumes that href is
a relative url such as /link rather than an absolute such as
https://example.com/link

For example
- dbc.NavLink(..., href="/my-page", active="exact") will be active on
  "/my-page" but not "/my-page/other" or "/random"
- dbc.NavLink(..., href="/my-page", active="partial") will be active on
  "/my-page" and "/my-page/other" but not "/random"
- `disabled` (Bool; optional): Disable the link
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
function dbc_navlink(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :href, :active, :disabled, :external_link, :n_clicks, :n_clicks_timestamp, :loading_state, :target]
        wild_props = Symbol[]
        return Component("dbc_navlink", "NavLink", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_navlink(children::Any; kwargs...) = dbc_navlink(;kwargs..., children = children)
dbc_navlink(children_maker::Function; kwargs...) = dbc_navlink(children_maker(); kwargs...)

