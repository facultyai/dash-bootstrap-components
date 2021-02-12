# AUTO GENERATED FILE - DO NOT EDIT

export dbc_button

"""
    dbc_button(;kwargs...)
    dbc_button(children::Any;kwargs...)
    dbc_button(children_maker::Function;kwargs...)


A Button component.
A component for creating Bootstrap buttons with different style options. The
Button component can act as a HTML button, link (<a>) or can be used like a
dash_core_components style `Link` for navigating between pages of a Dash app.

Use the `n_clicks` prop to trigger callbacks when the button has been
clicked.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component.
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `href` (String; optional): Pass a URL (relative or absolute) to make the menu entry a link.
- `external_link` (Bool; optional): If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.
- `n_clicks` (Real; optional): An integer that represents the number of times
that this element has been clicked on.
- `n_clicks_timestamp` (Real; optional): Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.

An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.
- `active` (Bool; optional): Whether button is in active state. Default: False.
- `block` (Bool; optional): Create block level button, one that spans the full width of its parent.
Default: False
- `color` (String; optional): Button color, options: primary, secondary, success, info, warning, danger,
link. Default: secondary.
- `disabled` (Bool; optional): Disable button (make unclickable). Default: False.
- `size` (String; optional): Button size, options: 'lg', 'md', 'sm'.
- `outline` (Bool; optional): Set outline button style, which removes background images and colors for a
lightweight style.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `target` (String; optional): Target attribute to pass on to link if using Button as an external link.
- `type` (a value equal to: 'button', 'reset', 'submit'; optional): The default behavior of the button. Possible values are: button, reset,
submit
"""
function dbc_button(; kwargs...)
        available_props = Symbol[:children, :id, :className, :style, :key, :href, :external_link, :n_clicks, :n_clicks_timestamp, :active, :block, :color, :disabled, :size, :outline, :loading_state, :target, :type]
        wild_props = Symbol[]
        return Component("dbc_button", "Button", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_button(children::Any; kwargs...) = dbc_button(;kwargs..., children = children)
dbc_button(children_maker::Function; kwargs...) = dbc_button(children_maker(); kwargs...)

