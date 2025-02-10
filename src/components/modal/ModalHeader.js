import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalHeader from 'react-bootstrap/ModalHeader';
import {getLoadingState} from '../../private/util';

/**
 * Add a header to any modal.
 */
const ModalHeader = ({
  children,
  className,
  class_name,
  tag,
  close_button = true,
  ...otherProps
}) => (
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
