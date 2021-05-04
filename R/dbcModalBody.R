# AUTO GENERATED FILE - DO NOT EDIT

dbcModalBody <- function(children=NULL, id=NULL, className=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ModalBody',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
