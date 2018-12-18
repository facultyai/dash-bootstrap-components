import React from 'react';
import PropTypes from 'prop-types';
import {Card as RSCard} from 'reactstrap';

const Card = props => {
  const {children, ...otherProps} = props;
  return <RSCard {...otherProps}>{children}</RSCard>;
};

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
  className: PropTypes.string,

  /**
   * Card color, options: primary, secondary, success, info, warning, danger,
   * link. Default is secondary
   */
  color: PropTypes.string,

  /**
   * Wrap all children in a CardBody element (basically add some padding)
   */
  body: PropTypes.bool,

  /**
   * Use outline style.
   */
  outline: PropTypes.bool,

  /**
   * Invert text colours for use with a dark color background.
   */
  inverse: PropTypes.bool
};

export default Card;
