import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
from dash.dependencies import Input, Output

app = dash.Dash()

app.layout = dbc.Container(
    [
        dcc.Dropdown(
            id="active-tab",
            options=[
                {"label": "Tab 1", "value": "tab1"},
                {"label": "Tab 2", "value": "tab2"},
            ],
            value="tab1",
        ),
        dbc.TabContent(
            [
                dbc.TabPane("Tab 1", tabId="tab1"),
                dbc.TabPane("Tab 2", tabId="tab2"),
            ],
            id="tab-content",
            activeTab="tab1",
        ),
    ]
)


@app.callback(
    Output("tab-content", "activeTab"), [Input("active-tab", "value")]
)
def tab(activeTab):
    return activeTab


if __name__ == "__main__":
    app.run_server(port=8888, debug=True)
