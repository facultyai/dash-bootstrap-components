import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCard from 'react-bootstrap/Card';

import {bootstrapColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

/**
 * Component for creating Bootstrap cards. Use in conjunction with CardBody, CardImg,
 * CardLink, CardHeader and CardFooter. Can also be used in conjunction with
 * CardColumns, CardDeck, CardGroup for different layout options.
 */
function Card({
  children,
  color,
  inverse,
  outline,
  style,
  class_name,
  className,
  ...otherProps
}) {
  const isBootstrapColor = bootstrapColors.has(color);
  return (
    <RBCard
      data-dash-is-loading={getLoadingState() || undefined}
      text={inverse ? 'white' : null}
      bg={isBootstrapColor && !outline ? color : null}
      border={isBootstrapColor && outline ? color : null}
      style={!isBootstrapColor ? {backgroundColor: color, ...style} : style}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCard>
  );
}

Card.propTypes = {
  /**
   * The children of this Card
   */
  children: PropTypes.node,

  /**
   * The ID of the Card
   */
  id: PropTypes.string,

  /**
   * Card color, options: primary, secondary, success, info, warning, danger, light,
   * dark or any valid CSS color of your choice (e.g. a hex code, a decimal code or a
   * CSS color name).
   *
   * Default is light.
   */
  color: PropTypes.string,

  /**
   * Apply the `card-body` class to the card, so that there is no need to also include
   * a CardBody component in the children of this Card. Default: False
   */
  body: PropTypes.bool,

  /**
   * Apply color styling to just the border of the Card.
   */
  outline: PropTypes.bool,

  /**
   * Invert text colours for use with a darker background.
   */
  inverse: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Card.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Card
   */
  class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the Card
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Card;
