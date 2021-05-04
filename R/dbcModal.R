# AUTO GENERATED FILE - DO NOT EDIT

dbcModal <- function(children=NULL, id=NULL, autoFocus=NULL, backdrop=NULL, backdropClassName=NULL, centered=NULL, className=NULL, contentClassName=NULL, fade=NULL, is_open=NULL, keyboard=NULL, labelledBy=NULL, modalClassName=NULL, role=NULL, scrollable=NULL, size=NULL, style=NULL, tag=NULL, zIndex=NULL) {
    
    props <- list(children=children, id=id, autoFocus=autoFocus, backdrop=backdrop, backdropClassName=backdropClassName, centered=centered, className=className, contentClassName=contentClassName, fade=fade, is_open=is_open, keyboard=keyboard, labelledBy=labelledBy, modalClassName=modalClassName, role=role, scrollable=scrollable, size=size, style=style, tag=tag, zIndex=zIndex)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Modal',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'autoFocus', 'backdrop', 'backdropClassName', 'centered', 'className', 'contentClassName', 'fade', 'is_open', 'keyboard', 'labelledBy', 'modalClassName', 'role', 'scrollable', 'size', 'style', 'tag', 'zIndex'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
