# AUTO GENERATED FILE - DO NOT EDIT

dbcRow <- function(children=NULL, id=NULL, align=NULL, className=NULL, class_name=NULL, justify=NULL, key=NULL, loading_state=NULL, style=NULL) {
    
    props <- list(children=children, id=id, align=align, className=className, class_name=class_name, justify=justify, key=key, loading_state=loading_state, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Row',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'align', 'className', 'class_name', 'justify', 'key', 'loading_state', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
