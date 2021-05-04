# AUTO GENERATED FILE - DO NOT EDIT

dbcProgress <- function(children=NULL, id=NULL, animated=NULL, bar=NULL, barClassName=NULL, bar_style=NULL, className=NULL, color=NULL, key=NULL, loading_state=NULL, max=NULL, multi=NULL, striped=NULL, style=NULL, tag=NULL, value=NULL) {
    
    props <- list(children=children, id=id, animated=animated, bar=bar, barClassName=barClassName, bar_style=bar_style, className=className, color=color, key=key, loading_state=loading_state, max=max, multi=multi, striped=striped, style=style, tag=tag, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Progress',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'animated', 'bar', 'barClassName', 'bar_style', 'className', 'color', 'key', 'loading_state', 'max', 'multi', 'striped', 'style', 'tag', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
