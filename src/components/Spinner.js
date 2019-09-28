import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {Spinner as RSSpinner} from 'reactstrap';

const Spinner = props => {
  const {children, ...otherProps} = props;
  return <RSSpinner {...omit(['setProps'], otherProps)}>{children}</RSSpinner>;
};

Spinner.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
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
   * Spinner color, options: primary, secondary, success, info, warning, danger,
   * link. If not specified will default to text colour.
   */
  color: PropTypes.string,

  /**
   * The type of spinner. Options 'border' and 'grow'. Default 'border'.
   */
  type: PropTypes.string,

  /**
   * The spinner size. Options are 'sm', 'md' and 'lg'.
   */
  size: PropTypes.string
};

export default Spinner;
