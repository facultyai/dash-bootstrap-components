---
title: Cards
lead: Bootstrap's cards provide a flexible content container with multiple variants and options.
---

## Simple example

Below is an example of a basic card with mixed content and a fixed width, set using the `style` argument. By default, `Card` has no fixed width, so it'll naturally fill the full width of its parent element. This is easily customized with Bootstraps various sizing options detailed below.

{{example:components/card/simple.py:card}}

## Content types

Cards support a wide variety of content. Here are some of the building blocks you can use when creating your own cards.

### Body

Use the `CardBody` component whenever you need a padded section within a `Card`. If all of the children of the `Card` are in the body, you can instead set `body=True` on the `Card` to simplify your code slightly.

{{example:components/card/body.py:cards}}

### Titles, text and links

Use the `card-title`, `card-subtitle`, and `card-text` classes to add margins and spacing that have been optimized for cards to titles, subtitles and text respectively.

The `CardLink` component can be used like `dash_core_components.Link`, as a regular hyperlink, or as a button by attaching a callback to the `n_clicks` prop. `CardLink` will behave like `dcc.Link` by default if a relative path is assigned to `href`, and like a hyperlink if an absolute path is assigned to `href`. This can be overridden using the `external_link` argument. This is useful, for example, when accessing routes on the underlying flask server.

{{example:components/card/ttl.py:card}}

### Images

Use `CardImg` when adding images to cards. The `top` argument can be used when the image is at the top of the card to remove the border radius from the bottom corners. Similarly the `bottom` argument can be used when the image is at the bottom of the card.

{{example:components/card/image.py:cards}}

### List groups

Create lists of content in a card with a `ListGroup` component by setting `flush=True`.

{{example:components/card/list_group.py:card}}

### Header and footer

Add optional headers or footers to cards using the `CardHeader` and `CardFooter` components.

{{example:components/card/header_footer.py:card}}

## Sizing

As mentioned previously, cards assume no specific width, so they will expand to the width of the parent element unless otherwise specified. You can change this behaviour as needed in one of three different ways.

### Using grid components

Wrap cards in `Row` and `Col` components to control their width and layout. In this example we use the `width` argument of `Col` to make the first card take up a third of the available width, and the second card two thirds. See the [layout documentation](/l/components/layout) for more details on `Row` and `Col`.

{{example:components/card/sizing/grid.py:cards}}

### Using Bootstrap utility classes

Bootstrap comes with several CSS utility classes built in, including some for sizing. For example, the class `w-50` sets `width:50%`. We can can apply these classes to quickly set the desired width of the cards. See the [Bootstrap documentation](https://getbootstrap.com/docs/4.3/utilities/sizing/) for more details.

{{example:components/card/sizing/utility.py:cards}}

### Using custom CSS

Finally, you can use custom CSS to control the size of your cards. In this example we use the `style` argument of `Card` to set inline style arguments. You can also write your own CSS classes that specify `width`, `max-width` etc. and apply them to the card.

{{example:components/card/sizing/css.py:card}}

## Card style

### Background and color

Use the `color` argument of `Card` to set the background and border colors of `Card` to one of Bootstrap's contextual colors. When setting a dark color, use `inverse=True` to invert the text colors for better contrast.

{{example:components/card/color.py:cards}}

### Outline style

Use the argument `outline=True` to remove the block colors from the background and header.

{{example:components/card/outline.py:cards}}

## Card layout

In addition to styling the contents of cards, Bootstrap includes options for laying out a series of cards.

### Card group

Use the `CardGroup` component to render cards as a single attached element with equal width and height columns.

{{example:components/card/layout/group.py:cards}}

### Card deck

The `CardDeck` component will lay cards out with equal width and height, without attaching them to one another like the `CardGroup` component.

{{example:components/card/layout/deck.py:cards}}

### Card columns

Cards can be organised into [Masonry](https://masonry.desandro.com/)-like columns using the `CardColumns` component. Cards are ordered top to bottom and left to right.

{{example:components/card/layout/columns.py:cards}}

{{apidoc:src/components/card/CardDeck.js}}

{{apidoc:src/components/card/CardGroup.js}}

{{apidoc:src/components/card/CardColumns.js}}

{{apidoc:src/components/card/Card.js}}

{{apidoc:src/components/card/CardHeader.js}}

{{apidoc:src/components/card/CardBody.js}}

{{apidoc:src/components/card/CardFooter.js}}

{{apidoc:src/components/card/CardLink.js}}

{{apidoc:src/components/card/CardImg.js}}

{{apidoc:src/components/card/CardImgOverlay.js}}
