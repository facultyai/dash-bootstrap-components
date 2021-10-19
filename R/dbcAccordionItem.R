# AUTO GENERATED FILE - DO NOT EDIT

dbcAccordionItem <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, item_id=NULL, loading_state=NULL, style=NULL, title=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, item_id=item_id, loading_state=loading_state, style=style, title=title)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'AccordionItem',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'item_id', 'loading_state', 'style', 'title'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
