# AUTO GENERATED FILE - DO NOT EDIT

export dbc_tab

"""
    dbc_tab(;kwargs...)
    dbc_tab(children::Any;kwargs...)
    dbc_tab(children_maker::Function;kwargs...)


A Tab component.
Create a single tab. Should be used as a component of Tabs.
Keyword arguments:
- `children` (a list of or a singular dash component, string or number; optional): The children of this component
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the content of the Tab
- `tab_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the NavItem in the tab.
- `active_tab_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the NavItem in the tab when it is active.
- `label_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the NavLink in the tab.
- `active_label_style` (Dict; optional): Defines CSS styles which will override styles previously set. The styles
set here apply to the NavLink in the tab when it is active
- `className` (String; optional): Often used with CSS to style elements with common properties.
- `tabClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the NavItem in the tab.
- `activeTabClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the NavItem in the tab when it
is active.
- `labelClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the NavLink in the tab.
- `activeLabelClassName` (String; optional): Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the NavLink in the tab when
it is active.
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `label` (String; optional): The tab's label, displayed in the tab itself.
- `tab_id` (String; optional): Optional identifier for tab used for determining which tab is visible
if not specified, and Tab is being used inside Tabs component, the tabId
will be set to "tab-i" where i is (zero indexed) position of tab in list
tabs pased to Tabs component.
- `disabled` (Bool; optional): Determines if tab is disabled or not - defaults to false
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
"""
function dbc_tab(; kwargs...)
        available_props = Symbol[:children, :id, :style, :tab_style, :active_tab_style, :label_style, :active_label_style, :className, :tabClassName, :activeTabClassName, :labelClassName, :activeLabelClassName, :key, :label, :tab_id, :disabled, :loading_state]
        wild_props = Symbol[]
        return Component("dbc_tab", "Tab", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

dbc_tab(children::Any; kwargs...) = dbc_tab(;kwargs..., children = children)
dbc_tab(children_maker::Function; kwargs...) = dbc_tab(children_maker(); kwargs...)

