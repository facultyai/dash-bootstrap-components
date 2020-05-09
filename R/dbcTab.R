# AUTO GENERATED FILE - DO NOT EDIT

dbcTab <- function(children=NULL, id=NULL, style=NULL, tab_style=NULL, label_style=NULL, className=NULL, tabClassName=NULL, labelClassName=NULL, key=NULL, label=NULL, tab_id=NULL, disabled=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, tab_style=tab_style, label_style=label_style, className=className, tabClassName=tabClassName, labelClassName=labelClassName, key=key, label=label, tab_id=tab_id, disabled=disabled, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tab',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'tab_style', 'label_style', 'className', 'tabClassName', 'labelClassName', 'key', 'label', 'tab_id', 'disabled', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
