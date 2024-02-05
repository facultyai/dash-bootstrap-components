from dash import Dash, html
from dash_bootstrap_components import Checklist, RadioItems, Select
from selenium.webdriver.common.by import By


def test_dbpa001_checklist(dash_duo):
    """
    Check that the options and value positional arguments are working for
    Checklist.
    """
    app = Dash()

    options = {
        "OptionA": "Option 1",
        "OptionB": "Option 2",
        "OptionC": "Option 3",
    }

    value = "OptionB"

    with_keywords = Checklist(
        options=options,
        value=value,
        id="with-keywords",
    )
    without_keywords = Checklist(options, value, id="without-keywords")

    app.layout = html.Div([with_keywords, without_keywords])

    dash_duo.start_server(app)

    # Check values
    assert [
        a.get_attribute("value")
        for a in dash_duo.wait_for_element("#with-keywords").find_elements(
            by=By.TAG_NAME, value="input"
        )
    ] == [
        a.get_attribute("value")
        for a in dash_duo.wait_for_element("#without-keywords").find_elements(
            by=By.TAG_NAME, value="input"
        )
    ]

    # Check labels
    assert [
        a.text
        for a in dash_duo.wait_for_element("#with-keywords").find_elements(
            by=By.TAG_NAME, value="label"
        )
    ] == [
        a.text
        for a in dash_duo.wait_for_element("#without-keywords").find_elements(
            by=By.TAG_NAME, value="label"
        )
    ]


def test_dbpa002_radio_items(dash_duo):
    """
    Check that the options and value positional arguments are working for
    RadioItems.
    """
    app = Dash()

    options = {
        "OptionA": "Option 1",
        "OptionB": "Option 2",
        "OptionC": "Option 3",
    }

    value = "OptionB"

    with_keywords = RadioItems(
        options=options,
        value=value,
        id="with-keywords",
    )
    without_keywords = RadioItems(options, value, id="without-keywords")

    app.layout = html.Div([with_keywords, without_keywords])

    dash_duo.start_server(app)

    # Check values
    assert [
        a.get_attribute("value")
        for a in dash_duo.wait_for_element("#with-keywords").find_elements(
            by=By.TAG_NAME, value="input"
        )
    ] == [
        a.get_attribute("value")
        for a in dash_duo.wait_for_element("#without-keywords").find_elements(
            by=By.TAG_NAME, value="input"
        )
    ]

    # Check labels
    assert [
        a.text
        for a in dash_duo.wait_for_element("#with-keywords").find_elements(
            by=By.TAG_NAME, value="label"
        )
    ] == [
        a.text
        for a in dash_duo.wait_for_element("#without-keywords").find_elements(
            by=By.TAG_NAME, value="label"
        )
    ]


def test_dbpa003_select(dash_duo):
    """
    Check that the options and value positional arguments are working for
    Select.
    """
    app = Dash()

    options = {
        "OptionA": "Option 1",
        "OptionB": "Option 2",
        "OptionC": "Option 3",
    }

    value = "OptionB"

    with_keywords = Select(
        options=options,
        value=value,
        id="with-keywords",
    )
    without_keywords = Select(options, value, id="without-keywords")

    app.layout = html.Div([with_keywords, without_keywords])

    dash_duo.start_server(app)

    # Check values
    assert [
        a.get_attribute("value")
        for a in dash_duo.wait_for_element("#with-keywords").find_elements(
            by=By.TAG_NAME, value="option"
        )
    ] == [
        a.get_attribute("value")
        for a in dash_duo.wait_for_element("#without-keywords").find_elements(
            by=By.TAG_NAME, value="option"
        )
    ]

    # Check labels
    assert [
        a.text
        for a in dash_duo.wait_for_element("#with-keywords").find_elements(
            by=By.TAG_NAME, value="option"
        )
    ] == [
        a.text
        for a in dash_duo.wait_for_element("#without-keywords").find_elements(
            by=By.TAG_NAME, value="option"
        )
    ]
