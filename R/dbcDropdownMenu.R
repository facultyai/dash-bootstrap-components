# AUTO GENERATED FILE - DO NOT EDIT

dbcDropdownMenu <- function(children=NULL, id=NULL, addon_type=NULL, align_end=NULL, caret=NULL, className=NULL, class_name=NULL, color=NULL, direction=NULL, disabled=NULL, group=NULL, in_navbar=NULL, key=NULL, label=NULL, loading_state=NULL, menu_variant=NULL, nav=NULL, right=NULL, size=NULL, style=NULL, toggleClassName=NULL, toggle_class_name=NULL, toggle_style=NULL) {
    
    props <- list(children=children, id=id, addon_type=addon_type, align_end=align_end, caret=caret, className=className, class_name=class_name, color=color, direction=direction, disabled=disabled, group=group, in_navbar=in_navbar, key=key, label=label, loading_state=loading_state, menu_variant=menu_variant, nav=nav, right=right, size=size, style=style, toggleClassName=toggleClassName, toggle_class_name=toggle_class_name, toggle_style=toggle_style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DropdownMenu',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'addon_type', 'align_end', 'caret', 'className', 'class_name', 'color', 'direction', 'disabled', 'group', 'in_navbar', 'key', 'label', 'loading_state', 'menu_variant', 'nav', 'right', 'size', 'style', 'toggleClassName', 'toggle_class_name', 'toggle_style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
