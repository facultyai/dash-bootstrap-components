# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcTab <- function(children=NULL, id=NULL, activeLabelClassName=NULL, activeTabClassName=NULL, active_label_class_name=NULL, active_label_style=NULL, active_tab_class_name=NULL, active_tab_style=NULL, className=NULL, class_name=NULL, disabled=NULL, key=NULL, label=NULL, labelClassName=NULL, label_class_name=NULL, label_style=NULL, loading_state=NULL, style=NULL, tabClassName=NULL, tab_class_name=NULL, tab_id=NULL, tab_style=NULL) {
    
    props <- list(children=children, id=id, activeLabelClassName=activeLabelClassName, activeTabClassName=activeTabClassName, active_label_class_name=active_label_class_name, active_label_style=active_label_style, active_tab_class_name=active_tab_class_name, active_tab_style=active_tab_style, className=className, class_name=class_name, disabled=disabled, key=key, label=label, labelClassName=labelClassName, label_class_name=label_class_name, label_style=label_style, loading_state=loading_state, style=style, tabClassName=tabClassName, tab_class_name=tab_class_name, tab_id=tab_id, tab_style=tab_style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tab',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'activeLabelClassName', 'activeTabClassName', 'active_label_class_name', 'active_label_style', 'active_tab_class_name', 'active_tab_style', 'className', 'class_name', 'disabled', 'key', 'label', 'labelClassName', 'label_class_name', 'label_style', 'loading_state', 'style', 'tabClassName', 'tab_class_name', 'tab_id', 'tab_style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
