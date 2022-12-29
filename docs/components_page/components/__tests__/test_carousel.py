"""
Testing of callbacks in non-Python Carousel snippets.
"""

from pathlib import Path

import dash.testing.wait as wait

from .helpers import load_jl_app, load_r_app

HERE = Path(__file__).parent


def test_r_carousel(dashr):
    r_app = load_r_app((HERE.parent / "carousel" / "callback.R"), "carousel")
    with open("app.R", "w") as f:
        f.write(r_app)
    dashr.start_server(r_app)
    check_carousel_callbacks(dashr)


def test_jl_carousel(dashjl):
    jl_app = load_jl_app(
        (HERE.parent / "carousel" / "callback.jl"), "carousel"
    )
    dashjl.start_server(jl_app)
    check_carousel_callbacks(dashjl)


def check_carousel_callbacks(runner):

    item = "label[for='_dbcprivate_radioitems_slide-number_input_1']"

    runner.find_element(item).click()

    wait.until(
        lambda: len(
            {"carousel-item", "active"}
            - set(
                runner.find_elements("div.carousel-item")[1]
                .get_attribute("class")
                .split()
            )
        )
        == 0,
        timeout=4,
    )
