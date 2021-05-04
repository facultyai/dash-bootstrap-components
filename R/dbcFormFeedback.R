# AUTO GENERATED FILE - DO NOT EDIT

dbcFormFeedback <- function(children=NULL, id=NULL, className=NULL, key=NULL, loading_state=NULL, style=NULL, tooltip=NULL, valid=NULL) {
    
    props <- list(children=children, id=id, className=className, key=key, loading_state=loading_state, style=style, tooltip=tooltip, valid=valid)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'FormFeedback',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'key', 'loading_state', 'style', 'tooltip', 'valid'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
