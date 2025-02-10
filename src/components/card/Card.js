import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCard from 'react-bootstrap/Card';

import {bootstrapColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

/**
 * Component for creating Bootstrap cards. Use in conjunction with CardBody,
 * CardImg, CardLink, CardHeader and CardFooter. Can also be used in
 * conjunction with CardColumns, CardDeck, CardGroup for different layout
 * options.
 */
function Card({
  children,
  color,
  inverse,
  outline,
  style,
  className,
  class_name,
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
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Card color, options: primary, secondary, success, info, warning, danger,
   * light, dark or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name).
   * Default is light.
   */
  color: PropTypes.string,

  /**
   * Apply the `card-body` class to the card, so that there is no need to also
   * include a CardBody component in the children of this Card. Default: False
   */
  body: PropTypes.bool,

  /**
   * Apply color styling to just the border of the card.
   */
  outline: PropTypes.bool,

  /**
   * Invert text colours for use with a darker background.
   */
  inverse: PropTypes.bool
};

export default Card;
