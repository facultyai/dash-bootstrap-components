# AUTO GENERATED FILE - DO NOT EDIT

export dbc_toast

"""
    dbc_toast(;kwargs...)
    dbc_toast(children::Any;kwargs...)
    dbc_toast(children_maker::Function;kwargs...)


A Toast component.
Toasts can be used to push messages and notifactions to users. Control
visibility of the toast with the `is_open` prop, or use `duration` to set a
timer for auto-dismissal.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `header_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the header of the toast.
- `headerClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the header of the toast.
- `body_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the body of the toast.
- `bodyClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the body of the toast.
- `tag` (String; optional): HTML tag to use for the Toast, default: div
- `is_open` (Bool; optional): Whether Toast is currently open.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `fade` (Bool; optional): Set to false for a Toast that simply appears rather than fades into view.
- `header` (String; optional): Text to populate the header with
- `dismissable` (Bool; optional): Set to True to add a dismiss button to the header which will close the
toast on click
- `duration` (Real; optional): Duration in milliseconds after which the Alert dismisses itself.
- `n_dismiss` (Real; optional): An integer that represents the number of times that the dismiss button has
been clicked on.
- `n_dismiss_timestamp` (Real; optional): Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.

An integer that represents the time (in ms since 1970) at which n_dismiss
changed. This can be used to tell which button was changed most recently.
- `icon` (String; optional): Add a contextually coloured icon to the header of the toast. Options are:
"primary", "secondary", "success", "warning", "danger", "info", "light" or
"dark".
"""
function dbc_toast(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :header_style, :headerClassName, :body_style, :bodyClassName, :tag, :is_open, :key, :fade, :header, :dismissable, :duration, :n_dismiss, :n_dismiss_timestamp, :icon]
        wild_props = Symbol[]
        return Component("dbc_toast", "Toast", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_toast(children::Any; kwargs...) = dbc_toast(;kwargs..., children = children)
dbc_toast(children_maker::Function; kwargs...) = dbc_toast(children_maker(); kwargs...)

