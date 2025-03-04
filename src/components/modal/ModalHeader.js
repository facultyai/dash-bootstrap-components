import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalHeader from 'react-bootstrap/ModalHeader';

import {getLoadingState} from '../../private/util';

/**
 * Add a header to any Modal.
 */
function ModalHeader({
  children,
  close_button = true,
  class_name,
  tag,
  className,
  ...otherProps
}) {
  return (
    <RBModalHeader
      as={tag}
      className={class_name || className}
      closeButton={close_button}
      data-dash-is-loading={getLoadingState() || undefined}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBModalHeader>
  );
}

ModalHeader.propTypes = {
  /**
   * The children of this ModalHeader.
   */
  children: PropTypes.node,

  /**
   * The ID of the ModalHeader.
   */
  id: PropTypes.string,

  /**
   * Add a close button to the header that can be used to close the modal.
   */
  close_button: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the ModalHeader.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ModalHeader
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the ModalHeader, default: div
   */
  tag: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the ModalHeader
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ModalHeader;
