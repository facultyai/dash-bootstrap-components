# AUTO GENERATED FILE - DO NOT EDIT

dbcDropdownMenu <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, label=NULL, direction=NULL, right=NULL, in_navbar=NULL, addon_type=NULL, disabled=NULL, nav=NULL, caret=NULL, color=NULL, toggle_style=NULL, toggleClassName=NULL, bs_size=NULL, loading_state=NULL, group=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, label=label, direction=direction, right=right, in_navbar=in_navbar, addon_type=addon_type, disabled=disabled, nav=nav, caret=caret, color=color, toggle_style=toggle_style, toggleClassName=toggleClassName, bs_size=bs_size, loading_state=loading_state, group=group)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DropdownMenu',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'label', 'direction', 'right', 'in_navbar', 'addon_type', 'disabled', 'nav', 'caret', 'color', 'toggle_style', 'toggleClassName', 'bs_size', 'loading_state', 'group'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
