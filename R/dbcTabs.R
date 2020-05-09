# AUTO GENERATED FILE - DO NOT EDIT

dbcTabs <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, active_tab=NULL, card=NULL, loading_state=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, active_tab=active_tab, card=card, loading_state=loading_state, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tabs',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'active_tab', 'card', 'loading_state', 'persistence', 'persisted_props', 'persistence_type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
