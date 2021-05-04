# AUTO GENERATED FILE - DO NOT EDIT

dbcRow <- function(children=NULL, id=NULL, align=NULL, className=NULL, form=NULL, justify=NULL, key=NULL, loading_state=NULL, no_gutters=NULL, style=NULL) {
    
    props <- list(children=children, id=id, align=align, className=className, form=form, justify=justify, key=key, loading_state=loading_state, no_gutters=no_gutters, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Row',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'align', 'className', 'form', 'justify', 'key', 'loading_state', 'no_gutters', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
