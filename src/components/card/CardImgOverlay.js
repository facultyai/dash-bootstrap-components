import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCard from 'react-bootstrap/Card';

import {getLoadingState} from '../../private/util';

/**
 * Use CardImgOverlay to turn an image into the background of your card and add text on
 * top of it.
 */
function CardImgOverlay({children, class_name, className, ...otherProps}) {
  return (
    <RBCard.ImgOverlay
      data-dash-is-loading={getLoadingState() || undefined}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCard.ImgOverlay>
  );
}

CardImgOverlay.propTypes = {
  /**
   * The children of this CardImgOverlay
   */
  children: PropTypes.node,

  /**
   * The ID of the CardImgOverlay
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the CardImgOverlay.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardImgOverlay
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the card image overlay, default: div
   */
  tag: PropTypes.string,

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
   * Additional CSS classes to apply to the CardImgOverlay
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardImgOverlay;
