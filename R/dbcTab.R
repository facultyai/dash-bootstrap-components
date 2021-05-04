# AUTO GENERATED FILE - DO NOT EDIT

dbcTab <- function(children=NULL, id=NULL, activeLabelClassName=NULL, activeTabClassName=NULL, active_label_style=NULL, active_tab_style=NULL, className=NULL, disabled=NULL, key=NULL, label=NULL, labelClassName=NULL, label_style=NULL, loading_state=NULL, style=NULL, tabClassName=NULL, tab_id=NULL, tab_style=NULL) {
    
    props <- list(children=children, id=id, activeLabelClassName=activeLabelClassName, activeTabClassName=activeTabClassName, active_label_style=active_label_style, active_tab_style=active_tab_style, className=className, disabled=disabled, key=key, label=label, labelClassName=labelClassName, label_style=label_style, loading_state=loading_state, style=style, tabClassName=tabClassName, tab_id=tab_id, tab_style=tab_style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tab',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'activeLabelClassName', 'activeTabClassName', 'active_label_style', 'active_tab_style', 'className', 'disabled', 'key', 'label', 'labelClassName', 'label_style', 'loading_state', 'style', 'tabClassName', 'tab_id', 'tab_style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
