import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import Modal from 'react-bootstrap/Modal';

/**
 * Add a header to any modal.
 */
const ModalHeader = props => {
  const {
    children,
    className,
    class_name,
    tag,
    close_button,
    ...otherProps
  } = props;
  return (
    <Modal.Header
      as={tag}
      className={class_name || className}
      closeButton={close_button}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </Modal.Header>
  );
};

ModalHeader.defaultProps = {
  close_button: true
};

ModalHeader.propTypes = {
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
   * Add a close button to the header that can be used to close the modal.
   */
  close_button: PropTypes.bool,

  /**
   * HTML tag to use for the ModalHeader, default: div
   */
  tag: PropTypes.string
};

export default ModalHeader;
