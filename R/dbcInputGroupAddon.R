# AUTO GENERATED FILE - DO NOT EDIT

dbcInputGroupAddon <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, addon_type=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, addon_type=addon_type, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'InputGroupAddon',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'addon_type', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
