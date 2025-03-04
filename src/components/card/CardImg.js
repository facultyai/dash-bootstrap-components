import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCardImg from 'react-bootstrap/CardImg';

import {getLoadingState} from '../../private/util';

/**
 * Use CardImg to add images to your cards.
 */
function CardImg({
  children,
  class_name,
  top,
  bottom,
  tag,
  className,
  ...otherProps
}) {
  return (
    <RBCardImg
      data-dash-is-loading={getLoadingState() || undefined}
      className={class_name || className}
      variant={top ? 'top' : bottom ? 'bottom' : null}
      as={tag}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCardImg>
  );
}

CardImg.propTypes = {
  /**
   * The children of the CardImg
   */
  children: PropTypes.node,

  /**
   * The ID of the CardImg
   */
  id: PropTypes.string,

  /**
   * The URI of the embeddable content.
   */
  src: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the CardImg.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardImg
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the CardImg, default: img
   */
  tag: PropTypes.string,

  /**
   * If True the card-img-top class will be applied which rounds the top corners of the
   * image to match the corners of the card.
   */
  top: PropTypes.bool,

  /**
   * If True the card-img-bottom class will be applied which rounds the bottom corners
   * of the image to match the corners of the card.
   */
  bottom: PropTypes.bool,

  /**
   * Alternative text in case an image can't be displayed.
   */
  alt: PropTypes.string,

  /**
   * Text to be displayed as a tooltip when hovering
   */
  title: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the CardImg
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardImg;
