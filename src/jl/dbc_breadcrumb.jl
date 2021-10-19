# AUTO GENERATED FILE - DO NOT EDIT

export dbc_breadcrumb

"""
    dbc_breadcrumb(;kwargs...)

A Breadcrumb component.
Use breadcrumbs to create a navigation breadcrumb in your app.
Keyword arguments:
- `id` (String; optional): The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.
- `className` (String; optional): **DEPRECATED** - Use class_name instead.

Often used with CSS to style elements with common properties.
- `class_name` (String; optional): Often used with CSS to style elements with common properties.
- `itemClassName` (String; optional): **DEPRECATED** - use item_class_name instead.

Class name ot apply to each item.
- `item_class_name` (String; optional): Class name to apply to each item.
- `item_style` (Dict; optional): Defines inline CSS styles that will be added to each item in the
breadcrumbs.
- `items` (optional): The details of the items to render inside of this component.. items has the following type: Array of lists containing elements 'label', 'href', 'active', 'external_link', 'target', 'title'.
Those elements have the following types:
  - `label` (String; optional): Label to display inside the breadcrumbs.
  - `href` (String; optional): URL of the resource to link to
  - `active` (Bool; optional): Apply 'active' style to this component.
  - `external_link` (Bool; optional): If true, the browser will treat this as an external link, forcing a
page refresh at the new location. If false, this just changes the
location without triggering a page refresh. Use this if you are
observing dcc.Location, for instance. Defaults to true for absolute
URLs and false otherwise.
  - `target` (String; optional): Target attribute to pass on to the link. Only applies to external links.
  - `title` (String; optional): title attribute for the inner a elements
- `key` (String; optional): A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info
- `loading_state` (optional): Object that holds the loading state object coming from dash-renderer. loading_state has the following type: lists containing elements 'is_loading', 'prop_name', 'component_name'.
Those elements have the following types:
  - `is_loading` (Bool; optional): Determines if the component is loading or not
  - `prop_name` (String; optional): Holds which property is loading
  - `component_name` (String; optional): Holds the name of the component that is loading
- `style` (Dict; optional): Defines CSS styles which will override styles previously set.
- `tag` (Dict; optional): HTML tag to use for the outer breadcrumb component. Default: "nav".
"""
function dbc_breadcrumb(; kwargs...)
        available_props = Symbol[:id, :className, :class_name, :itemClassName, :item_class_name, :item_style, :items, :key, :loading_state, :style, :tag]
        wild_props = Symbol[]
        return Component("dbc_breadcrumb", "Breadcrumb", "dash_bootstrap_components", available_props, wild_props; kwargs...)
end

