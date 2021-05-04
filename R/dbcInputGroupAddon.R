# AUTO GENERATED FILE - DO NOT EDIT

dbcInputGroupAddon <- function(children=NULL, id=NULL, addon_type=NULL, className=NULL, key=NULL, loading_state=NULL, style=NULL) {
    
    props <- list(children=children, id=id, addon_type=addon_type, className=className, key=key, loading_state=loading_state, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'InputGroupAddon',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'addon_type', 'className', 'key', 'loading_state', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
