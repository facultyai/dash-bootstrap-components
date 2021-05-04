# AUTO GENERATED FILE - DO NOT EDIT

dbcPopover <- function(children=NULL, id=NULL, className=NULL, container=NULL, delay=NULL, flip=NULL, hide_arrow=NULL, innerClassName=NULL, is_open=NULL, key=NULL, loading_state=NULL, offset=NULL, placement=NULL, style=NULL, target=NULL, trigger=NULL) {
    
    props <- list(children=children, id=id, className=className, container=container, delay=delay, flip=flip, hide_arrow=hide_arrow, innerClassName=innerClassName, is_open=is_open, key=key, loading_state=loading_state, offset=offset, placement=placement, style=style, target=target, trigger=trigger)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Popover',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'container', 'delay', 'flip', 'hide_arrow', 'innerClassName', 'is_open', 'key', 'loading_state', 'offset', 'placement', 'style', 'target', 'trigger'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
