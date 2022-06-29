# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcTooltip <- function(children=NULL, id=NULL, autohide=NULL, className=NULL, class_name=NULL, delay=NULL, fade=NULL, flip=NULL, is_open=NULL, key=NULL, loading_state=NULL, placement=NULL, style=NULL, target=NULL, trigger=NULL) {
    
    props <- list(children=children, id=id, autohide=autohide, className=className, class_name=class_name, delay=delay, fade=fade, flip=flip, is_open=is_open, key=key, loading_state=loading_state, placement=placement, style=style, target=target, trigger=trigger)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tooltip',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'autohide', 'className', 'class_name', 'delay', 'fade', 'flip', 'is_open', 'key', 'loading_state', 'placement', 'style', 'target', 'trigger'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
