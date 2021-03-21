# AUTO GENERATED FILE - DO NOT EDIT

dbcPopover <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, placement=NULL, target=NULL, container=NULL, trigger=NULL, is_open=NULL, hide_arrow=NULL, innerClassName=NULL, delay=NULL, offset=NULL, flip=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, placement=placement, target=target, container=container, trigger=trigger, is_open=is_open, hide_arrow=hide_arrow, innerClassName=innerClassName, delay=delay, offset=offset, flip=flip, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Popover',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'placement', 'target', 'container', 'trigger', 'is_open', 'hide_arrow', 'innerClassName', 'delay', 'offset', 'flip', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
