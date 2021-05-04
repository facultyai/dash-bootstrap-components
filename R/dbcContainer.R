# AUTO GENERATED FILE - DO NOT EDIT

dbcContainer <- function(children=NULL, id=NULL, className=NULL, fluid=NULL, key=NULL, loading_state=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, fluid=fluid, key=key, loading_state=loading_state, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Container',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'fluid', 'key', 'loading_state', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
