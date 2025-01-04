"""
This app demonstrates how you can display dismissable messages to the user
using the Toast component.

The key idea is to maintain a list of the messages in memory on the client side
using dash_core_components.Store. Each time the Store is updated, a callback
renders all of the messages that are in the Store.

The displayed messages can then be controlled by controlling what is in the
Store. In this example we use a pattern-matching callback that responds to both
the main button being clicked, but also any of the dismiss buttons of the Toast
components. With dash.callback_context we can determine what was pressed, and
add or remove a message from the Store accordingly. Using this same pattern you
can add or remove messages from the message store in response to all kinds of
different events.
"""

import json
from random import randint
from uuid import uuid4

import dash
import dash_bootstrap_components as dbc
from dash import ALL, Input, Output, State, dcc, html

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container(
    [
        # store will save all messages to display to the user
        # this is on the client-side so it's user specific
        dcc.Store(id="message-store"),
        html.H1("Toast demo"),
        html.P("Click on generate, you'll get a random number pop up in a toast"),
        dbc.Button("Generate number", id="button"),
        # create a container for the toasts and position to the top right
        # depending on the layout of your app you might want to change this
        html.Div(
            id="toast-container",
            style={"position": "fixed", "top": 10, "right": 10, "width": 350},
        ),
    ],
    className="p-5",
)


@app.callback(
    Output("message-store", "data"),
    [
        Input("button", "n_clicks"),
        Input({"type": "toast", "id": ALL}, "n_dismiss"),
    ],
    [State("message-store", "data")],
)
def manage_store(n, dismissed_toast, store):
    """
    This callback manages the message store. If the "generate" button is
    clicked we add an item to the store. If one of the toasts is dismissed we
    remove the corresponding item from the store. To figure out which of these
    happened, we use callback context.
    """
    # determine which input triggered the callback
    ctx = dash.callback_context
    triggered = ctx.triggered[0]["prop_id"]

    if n and triggered == "button.n_clicks":
        # button has been clicked, add a new message to the existing list
        # generate a random id using uuid.uuid4.
        # We could add additional fields other than just number and id here
        # such as a header, icon color etc.
        return [*store, {"number": randint(0, 100), "id": str(uuid4())}]
    elif triggered.endswith(".n_dismiss"):
        # one of the messages has been dismissed
        # recover id of dismissed toast
        id_, _ = triggered.split(".")
        id_ = json.loads(id_)["id"]

        # filter it from the store
        return [item for item in store if item["id"] != id_]
    return []


def make_toast(message):
    """
    Helper function for making a toast. dict id for use in pattern matching
    callbacks.

    The messages in the message store take the form

    {"id": id, "number": number}

    but we could add any additional fields we like to control how the Toast
    renders. For example, perhaps we could add an `icon` field to control the
    color of the icon for different messages, or a `header` field.
    """
    id_ = message["id"]
    return dbc.Toast(
        f"A random number: {message['number']}",
        id={"type": "toast", "id": id_},
        key=id_,
        header="Positioned toast",
        is_open=True,
        dismissable=True,
        icon="danger",
    )


@app.callback(Output("toast-container", "children"), Input("message-store", "data"))
def display_toasts(store):
    """
    When the store updates, update the displayed toasts.
    """
    return [make_toast(item) for item in store]


if __name__ == "__main__":
    app.run_server(debug=True)
