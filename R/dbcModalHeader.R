# AUTO GENERATED FILE - DO NOT EDIT

dbcModalHeader <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, close_button=NULL, loading_state=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, close_button=close_button, loading_state=loading_state, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ModalHeader',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'close_button', 'loading_state', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
