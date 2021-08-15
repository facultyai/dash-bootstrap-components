import dash_core_components as dcc
import dash_html_components as html


# TODO: delete once Dash 2.0 is released
def class_name_shim(fn):
    def new_init(self, *args, **kwargs):
        kwargs["className"] = kwargs.get("class_name", kwargs.get("className"))
        return fn(
            self,
            *args,
            **{k: v for k, v in kwargs.items() if k != "class_name"}
        )

    return new_init


for component in [
    dcc.Markdown,
    html.A,
    html.Blockquote,
    html.Div,
    html.H1,
    html.H2,
    html.H3,
    html.H4,
    html.H5,
    html.H6,
    html.Hr,
    html.I,
    html.P,
    html.Small,
]:
    component.__init__ = class_name_shim(component.__init__)
