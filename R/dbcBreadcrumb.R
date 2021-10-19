# AUTO GENERATED FILE - DO NOT EDIT

dbcBreadcrumb <- function(id=NULL, className=NULL, class_name=NULL, itemClassName=NULL, item_class_name=NULL, item_style=NULL, items=NULL, key=NULL, loading_state=NULL, style=NULL, tag=NULL) {
    
    props <- list(id=id, className=className, class_name=class_name, itemClassName=itemClassName, item_class_name=item_class_name, item_style=item_style, items=items, key=key, loading_state=loading_state, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Breadcrumb',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'className', 'class_name', 'itemClassName', 'item_class_name', 'item_style', 'items', 'key', 'loading_state', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
