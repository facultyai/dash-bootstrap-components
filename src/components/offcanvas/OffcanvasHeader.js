import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {default as RBOffcanvasHeader} from 'react-bootstrap/OffcanvasHeader';
import {default as RBOffcanvasTitle} from 'react-bootstrap/OffcanvasTitle';

/**
 * Add a header to any offcanvas.
 */
const OffcanvasHeader = props => {
  const {title, class_name, close_button, ...otherProps} = props;
  return (
    <RBOffcanvasHeader
      className={class_name}
      closeButton={close_button}
      {...omit(['setProps'], otherProps)}
    >
      <RBOffcanvasTitle>{title}</RBOffcanvasTitle>
    </RBOffcanvasHeader>
  );
};

OffcanvasHeader.defaultProps = {
  close_button: true
};

OffcanvasHeader.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * The header title
   */
  title: PropTypes.string,

  /**
   * Specify whether the Component should contain a close button
   */
  close_button: PropTypes.bool
};

export default OffcanvasHeader;
