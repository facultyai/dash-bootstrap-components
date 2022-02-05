# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcTooltip <- function(children=NULL, id=NULL, autohide=NULL, className=NULL, class_name=NULL, delay=NULL, flip=NULL, key=NULL, loading_state=NULL, placement=NULL, style=NULL, target=NULL) {
    
    props <- list(children=children, id=id, autohide=autohide, className=className, class_name=class_name, delay=delay, flip=flip, key=key, loading_state=loading_state, placement=placement, style=style, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tooltip',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'autohide', 'className', 'class_name', 'delay', 'flip', 'key', 'loading_state', 'placement', 'style', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
