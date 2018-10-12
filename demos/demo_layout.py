import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html

_body = dbc.Container(
    [
        dbc.Row(
            [
                dbc.Col(
                    [
                        html.H2('Heading'),
                        html.P('Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.'),
                        dbc.Button('View details', color='secondary')
                    ],
                    md=4
                ),
                dbc.Col(
                    [
                        html.H2('Graph'),
                        dcc.Graph(
                            id='dash-docs-graph',
                            figure={'data': [{'x': [1, 2, 3], 'y': [1, 4, 9]}]}
                        )
                    ]
                )
            ]
        )
    ]
)


class DemoLayoutPage:

    def for_path(self, component):
        return _body
