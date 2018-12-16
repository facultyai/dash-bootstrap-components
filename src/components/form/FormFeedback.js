import React from 'react';
import PropTypes from 'prop-types';
import {FormFeedback as RSFormFeedback} from 'reactstrap';

const FormFeedback = props => {
  const {children, ...otherProps} = props;
  return <RSFormFeedback {...otherProps}>{children}</RSFormFeedback>;
};

FormFeedback.propTypes = {
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
   * ...
   */
  valid: PropTypes.bool,

  /**
   * ...
   */
  tooltip: PropTypes.bool
};

export default FormFeedback;
