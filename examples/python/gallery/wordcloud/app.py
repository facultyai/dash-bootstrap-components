"""
Dash port of Shiny wordcloud example:

https://shiny.rstudio.com/gallery/word-cloud.html
"""
import base64
import io
from functools import lru_cache
from urllib.request import urlopen

import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
from dash.dependencies import Input, Output
from wordcloud import WordCloud

BASE_URL = "https://cdn.opensource.faculty.ai/wordcloud"

DOCUMENT_URLS = {
    "midsummer": f"{BASE_URL}/a-midsummer-nights-dream.txt",
    "venice": f"{BASE_URL}/the-merchant-of-venice.txt",
    "randj": f"{BASE_URL}/romeo-and-juliet.txt",
}


# use lru_cache to memoise the frequencies
@lru_cache(maxsize=3)
def load_word_frequencies(book):
    url = DOCUMENT_URLS[book]
    WC = WordCloud(width=1000, height=600)
    with urlopen(url) as f:
        text = f.read().decode("utf-8")
    return WC.process_text(text)


app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

dropdown = dcc.Dropdown(
    id="book",
    options=[
        {"label": "A Midsummer Night's Dream", "value": "midsummer"},
        {"label": "The Merchant of Venice", "value": "venice"},
        {"label": "Romeo and Juliet", "value": "randj"},
    ],
    value="midsummer",
)

min_freq_slider = html.Div(
    dcc.Slider(
        id="min-freq-slider",
        min=1,
        max=50,
        step=1,
        value=15,
        marks={1: "1", **{i: str(i) for i in range(5, 51, 5)}},
    ),
    className="p-3 mb-2",
)

max_vocab_slider = html.Div(
    dcc.Slider(
        id="max-vocab-slider",
        min=1,
        max=300,
        step=1,
        value=100,
        marks={1: "1", **{i: str(i) for i in range(30, 301, 30)}},
    ),
    className="p-3",
)

controls = dbc.Card(
    [
        dbc.FormGroup([dbc.Label("Choose a book:"), dropdown]),
        dbc.FormGroup([dbc.Label("Minimum frequency:"), min_freq_slider]),
        dbc.FormGroup(
            [dbc.Label("Maximum number of words:"), max_vocab_slider]
        ),
    ],
    className="mb-3",
    body=True,
)

app.layout = dbc.Container(
    [
        html.H1("Word Cloud"),
        html.Hr(),
        dbc.Row(
            [
                dbc.Col(controls, md=4),
                dbc.Col(dbc.Card(dbc.CardImg(id="wordcloud")), md=8),
            ],
            align="center",
        ),
    ],
    fluid=True,
)


@app.callback(
    Output("wordcloud", "src"),
    [
        Input("book", "value"),
        Input("min-freq-slider", "value"),
        Input("max-vocab-slider", "value"),
    ],
)
def make_wordcloud(book, min_freq, max_vocab):
    # filter frequencies based on min_freq and max_vocab
    sorted_frequencies = sorted(
        load_word_frequencies(book).items(), key=lambda x: x[1], reverse=True
    )
    frequencies = {
        k: v for k, v in sorted_frequencies[:max_vocab] if v >= min_freq
    }

    wc = WordCloud(
        width=1000,
        height=500,
        max_words=max_vocab,
        background_color="white",
        colormap="plasma",
    )

    buffer = io.BytesIO()
    wc.generate_from_frequencies(frequencies).to_image().save(
        buffer, format="png"
    )
    buffer.seek(0)

    return "data:image/png;base64,{}".format(
        base64.b64encode(buffer.read()).decode()
    )


if __name__ == "__main__":
    app.run_server(debug=True, port=8888)
