# AUTO GENERATED FILE - DO NOT EDIT

dbcProgress <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, tag=NULL, bar=NULL, multi=NULL, max=NULL, value=NULL, animated=NULL, striped=NULL, color=NULL, barClassName=NULL, bar_style=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, tag=tag, bar=bar, multi=multi, max=max, value=value, animated=animated, striped=striped, color=color, barClassName=barClassName, bar_style=bar_style, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Progress',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'tag', 'bar', 'multi', 'max', 'value', 'animated', 'striped', 'color', 'barClassName', 'bar_style', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
