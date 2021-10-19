# AUTO GENERATED FILE - DO NOT EDIT

dbcOffcanvas <- function(children=NULL, id=NULL, autoFocus=NULL, autofocus=NULL, backdrop=NULL, backdropClassName=NULL, backdrop_class_name=NULL, className=NULL, class_name=NULL, close_button=NULL, is_open=NULL, keyboard=NULL, labelledBy=NULL, labelledby=NULL, loading_state=NULL, placement=NULL, scrollable=NULL, style=NULL, title=NULL) {
    
    props <- list(children=children, id=id, autoFocus=autoFocus, autofocus=autofocus, backdrop=backdrop, backdropClassName=backdropClassName, backdrop_class_name=backdrop_class_name, className=className, class_name=class_name, close_button=close_button, is_open=is_open, keyboard=keyboard, labelledBy=labelledBy, labelledby=labelledby, loading_state=loading_state, placement=placement, scrollable=scrollable, style=style, title=title)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Offcanvas',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'autoFocus', 'autofocus', 'backdrop', 'backdropClassName', 'backdrop_class_name', 'className', 'class_name', 'close_button', 'is_open', 'keyboard', 'labelledBy', 'labelledby', 'loading_state', 'placement', 'scrollable', 'style', 'title'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
