# AUTO GENERATED FILE - DO NOT EDIT

dbcModalBody <- function(children=NULL, id=NULL, style=NULL, className=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ModalBody',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
