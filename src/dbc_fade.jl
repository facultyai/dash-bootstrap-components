# AUTO GENERATED FILE - DO NOT EDIT

export dbc_fade

"""
    dbc_fade(;kwargs...)
    dbc_fade(children::Any;kwargs...)
    dbc_fade(children_maker::Function;kwargs...)


A Fade component.
Hide or show content with a fading animation. Visibility of the children is
controlled by the `is_open` prop which can be targetted by callbacks.
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
- `is_in` (Bool; optional): Controls whether the children of the Fade component are currently visible
or not.
- `timeout` (optional): The duration of the transition, in milliseconds.

You may specify a single timeout for all transitions like: `timeout=500`
or individually like: timeout={'enter': 300, 'exit': 500}. timeout has the following type: Real | lists containing elements 'enter', 'exit'.
Those elements have the following types:
  - `enter` (Real; optional)
  - `exit` (Real; optional)
- `appear` (Bool; optional): Show fade-in animation on initial page load. Default: True.
- `enter` (Bool; optional): Enable or disable enter transitions. Default: True.
- `exit` (Bool; optional): Enable or disable exit transitions. Default: True.
- `tag` (String; optional): HTML tag to use for the fade component. Default: div.
- `base_class` (String; optional): CSS base class. Note that this class is always used, whether the
components are showing or hidden. Default: 'fade'
- `base_class_active` (String; optional): CSS class used when the fade contents are displayed. Default: 'show'.
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_fade(; kwargs...)
        available_props = Symbol[:children, :id, :style, :className, :key, :is_in, :timeout, :appear, :enter, :exit, :tag, :base_class, :base_class_active, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_fade", "Fade", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_fade(children::Any; kwargs...) = dbc_fade(;kwargs..., children = children)
dbc_fade(children_maker::Function; kwargs...) = dbc_fade(children_maker(); kwargs...)

