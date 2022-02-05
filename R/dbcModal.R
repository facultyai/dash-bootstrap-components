# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcModal <- function(children=NULL, id=NULL, autoFocus=NULL, autofocus=NULL, backdrop=NULL, backdropClassName=NULL, backdrop_class_name=NULL, centered=NULL, className=NULL, class_name=NULL, contentClassName=NULL, content_class_name=NULL, fade=NULL, fullscreen=NULL, is_open=NULL, keyboard=NULL, labelledBy=NULL, labelledby=NULL, modalClassName=NULL, modal_class_name=NULL, role=NULL, scrollable=NULL, size=NULL, style=NULL, tag=NULL, zIndex=NULL, zindex=NULL) {
    
    props <- list(children=children, id=id, autoFocus=autoFocus, autofocus=autofocus, backdrop=backdrop, backdropClassName=backdropClassName, backdrop_class_name=backdrop_class_name, centered=centered, className=className, class_name=class_name, contentClassName=contentClassName, content_class_name=content_class_name, fade=fade, fullscreen=fullscreen, is_open=is_open, keyboard=keyboard, labelledBy=labelledBy, labelledby=labelledby, modalClassName=modalClassName, modal_class_name=modal_class_name, role=role, scrollable=scrollable, size=size, style=style, tag=tag, zIndex=zIndex, zindex=zindex)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Modal',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'autoFocus', 'autofocus', 'backdrop', 'backdropClassName', 'backdrop_class_name', 'centered', 'className', 'class_name', 'contentClassName', 'content_class_name', 'fade', 'fullscreen', 'is_open', 'keyboard', 'labelledBy', 'labelledby', 'modalClassName', 'modal_class_name', 'role', 'scrollable', 'size', 'style', 'tag', 'zIndex', 'zindex'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
