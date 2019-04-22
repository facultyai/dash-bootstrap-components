from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .body import cards as cards_body
from .color import cards as cards_color
from .header_footer import card as card_header_footer
from .image import cards as cards_image
from .layout.columns import cards as cards_columns
from .layout.deck import cards as cards_deck
from .layout.group import cards as cards_group
from .list_group import card as card_list_group
from .outline import cards as cards_outline
from .simple import card as card_simple
from .sizing.css import card as card_size_css
from .sizing.grid import cards as cards_size_grid
from .sizing.utility import cards as cards_size_utility
from .ttl import card as card_ttl

HERE = Path(__file__).parent

card_simple_source = (HERE / "simple.py").read_text()
cards_body_source = (HERE / "body.py").read_text()
card_ttl_source = (HERE / "ttl.py").read_text()
cards_image_source = (HERE / "image.py").read_text()
card_list_group_source = (HERE / "list_group.py").read_text()
card_header_footer_source = (HERE / "header_footer.py").read_text()
cards_size_grid_source = (HERE / "sizing" / "grid.py").read_text()
cards_size_utility_source = (HERE / "sizing" / "utility.py").read_text()
card_size_css_source = (HERE / "sizing" / "css.py").read_text()
cards_color_source = (HERE / "color.py").read_text()
cards_outline_source = (HERE / "outline.py").read_text()
cards_group_source = (HERE / "layout" / "group.py").read_text()
cards_deck_source = (HERE / "layout" / "deck.py").read_text()
cards_columns_source = (HERE / "layout" / "columns.py").read_text()

content = [
    html.H2("Cards", className="display-4"),
    html.P(
        dcc.Markdown(
            "Bootstrap's cards provide a flexible content container with "
            "multiple variants and options."
        ),
        className="lead",
    ),
    html.H4("Simple example"),
    html.P(
        dcc.Markdown(
            "Below is an example of a basic card with mixed content and a "
            "fixed width, set using the `style` argument. By default, `Card` "
            "has no fixed width, so it'll naturally fill the full width of "
            "its parent element. This is easily customized with Bootstraps "
            "various sizing options detailed below."
        )
    ),
    ExampleContainer(card_simple),
    HighlightedSource(card_simple_source),
    html.H4("Content types"),
    html.P(
        "Cards support a wide variety of content. Here are some of the "
        "building blocks you can use when creating your own cards."
    ),
    html.H5("Body"),
    html.P(
        dcc.Markdown(
            "Use the `CardBody` component whenever you need a padded section "
            "within a `Card`. If all of the children of the `Card` are in the "
            "body, you can instead set `body=True` on the `Card` to simplify "
            "your code slightly."
        )
    ),
    ExampleContainer(cards_body),
    HighlightedSource(cards_body_source),
    html.H5("Titles, text and links"),
    html.P(
        dcc.Markdown(
            "Use the `card-title`, `card-subtitle`, and `card-text` classes "
            "to add margins and spacing that have been optimized for cards to "
            "titles, subtitles and text respectively."
        )
    ),
    html.P(
        dcc.Markdown(
            "The `CardLink` component can be used like "
            "`dash_core_components.Link`, as a regular hyperlink, or "
            "as a button by attaching a callback to the `n_clicks` prop. "
            "`CardLink` will behave like `dcc.Link` by default if a "
            "relative path is assigned to `href`, and like a hyperlink if an "
            "absolute path is assigned to `href`. This can be overridden "
            "using the `external_link` argument. This is useful, for example, "
            "when accessing routes on the underlying flask server."
        )
    ),
    ExampleContainer(card_ttl),
    HighlightedSource(card_ttl_source),
    html.H5("Images"),
    html.P(
        dcc.Markdown(
            "Use `CardImg` when adding images to cards. The `top` argument "
            "can be used when the image is at the top of the card to remove "
            "the border radius from the bottom corners. Similarly the "
            "`bottom` argument can be used when the image is at the bottom of "
            "the card."
        )
    ),
    ExampleContainer(cards_image),
    HighlightedSource(cards_image_source),
    html.H5("List groups"),
    html.P(
        dcc.Markdown(
            "Create lists of content in a card with a `ListGroup` component "
            "by setting `flush=True`."
        )
    ),
    ExampleContainer(card_list_group),
    HighlightedSource(card_list_group_source),
    html.H5("Header and footer"),
    html.P(
        dcc.Markdown(
            "Add optional headers or footers to cards using the `CardHeader` "
            "and `CardFooter` components."
        )
    ),
    ExampleContainer(card_header_footer),
    HighlightedSource(card_header_footer_source),
    html.H4("Sizing"),
    html.P(
        dcc.Markdown(
            "As mentioned previously, cards assume no specific width, so they "
            "will expand to the width of the parent element unless otherwise "
            "specified. You can change this behaviour as needed in one of "
            "three different ways."
        )
    ),
    html.H5("Using grid components"),
    html.P(
        dcc.Markdown(
            "Wrap cards in `Row` and `Col` components to control their width "
            "and layout. In this example we use the `width` argument of `Col` "
            "to make the first card take up a third of the available width, "
            "and the second card two thirds. See the "
            "[layout documentation](/l/components/layout) for more details on "
            "`Row` and `Col`."
        )
    ),
    ExampleContainer(cards_size_grid),
    HighlightedSource(cards_size_grid_source),
    html.H5("Using Bootstrap utility classes"),
    html.P(
        dcc.Markdown(
            "Bootstrap comes with several CSS utility classes built in, "
            "including some for sizing. For example, the class `w-50` sets "
            "`width:50%`. We can can apply these classes to quickly set the "
            "desired width of the cards. See the [Bootstrap documentation]"
            "(https://getbootstrap.com/docs/4.3/utilities/sizing/) for more "
            "details."
        )
    ),
    ExampleContainer(cards_size_utility),
    HighlightedSource(cards_size_utility_source),
    html.H5("Using custom CSS"),
    html.P(
        dcc.Markdown(
            "Finally, you can use custom CSS to control the size of your "
            "cards. In this example we use the `style` argument of `Card` to "
            "set inline style arguments. You can also write your own CSS "
            "classes that specify `width`, `max-width` etc. and apply them to "
            "the card."
        )
    ),
    ExampleContainer(card_size_css),
    HighlightedSource(card_size_css_source),
    html.H4("Card style"),
    html.H5("Background and color"),
    html.P(
        dcc.Markdown(
            "Use the `color` argument of `Card` to set the background and "
            "border colors of `Card` to one of Bootstrap's contextual colors. "
            "When setting a dark color, use `inverse=True` to invert the text "
            "colors for better contrast."
        )
    ),
    ExampleContainer(cards_color),
    HighlightedSource(cards_color_source),
    html.H4("Outline style"),
    html.P(
        dcc.Markdown(
            "Use the argument `outline=True` to remove the block colors from "
            "the background and header."
        )
    ),
    ExampleContainer(cards_outline),
    HighlightedSource(cards_outline_source),
    html.H4("Card layout"),
    html.P(
        dcc.Markdown(
            "In addition to styling the contents of cards, Bootstrap includes "
            "options for laying out a series of cards."
        )
    ),
    html.H5("Card group"),
    html.P(
        dcc.Markdown(
            "Use the `CardGroup` component to render cards as a single "
            "attached element with equal width and height columns."
        )
    ),
    ExampleContainer(cards_group),
    HighlightedSource(cards_group_source),
    html.H5("Card deck"),
    html.P(
        dcc.Markdown(
            "The `CardDeck` component will lay cards out with equal width and "
            "height, without attaching them to one another like the "
            "`CardGroup` component."
        )
    ),
    ExampleContainer(cards_deck),
    HighlightedSource(cards_deck_source),
    html.H5("Card columns"),
    html.P(
        dcc.Markdown(
            "Cards can be organised into [Masonry]"
            "(https://masonry.desandro.com/)-like columns using the "
            "`CardColumns` component. Cards are ordered top to bottom and "
            "left to right."
        )
    ),
    ExampleContainer(cards_columns),
    HighlightedSource(cards_columns_source),
    ApiDoc(
        get_component_metadata("src/components/card/CardDeck.js"),
        component_name="CardDeck",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardGroup.js"),
        component_name="CardGroup",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardColumns.js"),
        component_name="CardColumns",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/Card.js"),
        component_name="Card",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardHeader.js"),
        component_name="CardHeader",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardBody.js"),
        component_name="CardBody",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardFooter.js"),
        component_name="CardFooter",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardLink.js"),
        component_name="CardLink",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardImg.js"),
        component_name="CardImg",
    ),
    ApiDoc(
        get_component_metadata("src/components/card/CardImgOverlay.js"),
        component_name="CardImgOverlay",
    ),
]
