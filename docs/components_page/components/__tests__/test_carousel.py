"""
Testing of callbacks in non-Python Carousel snippets.
"""

from pathlib import Path

import dash.testing.wait as wait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_carousel(dashr):
    r_app = load_r_app((HERE.parent / "carousel" / "callback.R"), "carousel")
    dashr.start_server(r_app)
    check_carousel_callbacks(dashr)


def test_jl_carousel(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "carousel" / "callback.jl"), "carousel"
    )
    dashjl.start_server(jl_app)
    check_carousel_callbacks(dashjl)


def check_carousel_callbacks(runner):

    runner.find_element(
        "label[for='_dbcprivate_radioitems_slide-number_input_1']"
    ).click()

    wait.until(
        lambda: runner.find_elements("div.carousel-item")[1].get_attribute(
            "class"
        )
        == "carousel-item active",
        timeout=4,
    )
