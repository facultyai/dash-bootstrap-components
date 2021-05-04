# AUTO GENERATED FILE - DO NOT EDIT

dbcFormGroup <- function(children=NULL, id=NULL, check=NULL, className=NULL, inline=NULL, key=NULL, loading_state=NULL, row=NULL, style=NULL) {
    
    props <- list(children=children, id=id, check=check, className=className, inline=inline, key=key, loading_state=loading_state, row=row, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'FormGroup',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'check', 'className', 'inline', 'key', 'loading_state', 'row', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
