# AUTO GENERATED FILE - DO NOT EDIT

dbcRow <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, no_gutters=NULL, align=NULL, justify=NULL, form=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, no_gutters=no_gutters, align=align, justify=justify, form=form, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Row',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'no_gutters', 'align', 'justify', 'form', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
