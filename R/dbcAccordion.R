# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcAccordion <- function(children=NULL, id=NULL, active_item=NULL, always_open=NULL, className=NULL, class_name=NULL, flush=NULL, key=NULL, loading_state=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, start_collapsed=NULL, style=NULL) {
    
    props <- list(children=children, id=id, active_item=active_item, always_open=always_open, className=className, class_name=class_name, flush=flush, key=key, loading_state=loading_state, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, start_collapsed=start_collapsed, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Accordion',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'active_item', 'always_open', 'className', 'class_name', 'flush', 'key', 'loading_state', 'persisted_props', 'persistence', 'persistence_type', 'start_collapsed', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
