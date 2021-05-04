# AUTO GENERATED FILE - DO NOT EDIT

dbcTabs <- function(children=NULL, id=NULL, active_tab=NULL, card=NULL, className=NULL, key=NULL, loading_state=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, style=NULL) {
    
    props <- list(children=children, id=id, active_tab=active_tab, card=card, className=className, key=key, loading_state=loading_state, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tabs',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'active_tab', 'card', 'className', 'key', 'loading_state', 'persisted_props', 'persistence', 'persistence_type', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
