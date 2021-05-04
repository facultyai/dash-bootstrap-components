# AUTO GENERATED FILE - DO NOT EDIT

dbcDropdownMenu <- function(children=NULL, id=NULL, addon_type=NULL, bs_size=NULL, caret=NULL, className=NULL, color=NULL, direction=NULL, disabled=NULL, group=NULL, in_navbar=NULL, key=NULL, label=NULL, loading_state=NULL, nav=NULL, right=NULL, style=NULL, toggleClassName=NULL, toggle_style=NULL) {
    
    props <- list(children=children, id=id, addon_type=addon_type, bs_size=bs_size, caret=caret, className=className, color=color, direction=direction, disabled=disabled, group=group, in_navbar=in_navbar, key=key, label=label, loading_state=loading_state, nav=nav, right=right, style=style, toggleClassName=toggleClassName, toggle_style=toggle_style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DropdownMenu',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'addon_type', 'bs_size', 'caret', 'className', 'color', 'direction', 'disabled', 'group', 'in_navbar', 'key', 'label', 'loading_state', 'nav', 'right', 'style', 'toggleClassName', 'toggle_style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
