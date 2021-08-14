import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {default as RBOffcanvasBody} from 'react-bootstrap/OffcanvasBody';

/**
 * Add a body to any offcanvas.
 */
const OffcanvasBody = props => {
  const {children, class_name, ...otherProps} = props;
  return (
    <RBOffcanvasBody className={class_name} {...omit(['setProps'], otherProps)}>
      {children}
    </RBOffcanvasBody>
  );
};

OffcanvasBody.propTypes = {
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
  class_name: PropTypes.string
};

export default OffcanvasBody;
