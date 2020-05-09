# AUTO GENERATED FILE - DO NOT EDIT

dbcModal <- function(children=NULL, id=NULL, style=NULL, className=NULL, tag=NULL, is_open=NULL, centered=NULL, scrollable=NULL, autoFocus=NULL, size=NULL, role=NULL, labelledBy=NULL, keyboard=NULL, backdrop=NULL, modalClassName=NULL, backdropClassName=NULL, contentClassName=NULL, fade=NULL, zIndex=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, tag=tag, is_open=is_open, centered=centered, scrollable=scrollable, autoFocus=autoFocus, size=size, role=role, labelledBy=labelledBy, keyboard=keyboard, backdrop=backdrop, modalClassName=modalClassName, backdropClassName=backdropClassName, contentClassName=contentClassName, fade=fade, zIndex=zIndex)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Modal',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'tag', 'is_open', 'centered', 'scrollable', 'autoFocus', 'size', 'role', 'labelledBy', 'keyboard', 'backdrop', 'modalClassName', 'backdropClassName', 'contentClassName', 'fade', 'zIndex'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
