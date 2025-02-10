import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalBody from 'react-bootstrap/ModalBody';

import {getLoadingState} from '../../private/util';

/**
 * Use this component to add consistent padding to the body (main content) of
 * your Modals.
 */
function ModalBody({children, className, class_name, tag, ...otherProps}) {
  return (
    <RBModalBody
      as={tag}
      className={class_name || className}
      data-dash-is-loading={getLoadingState() || undefined}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBModalBody>
  );
}

ModalBody.propTypes = {
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
   * HTML tag to use for the ModalBody, default: div
   */
  tag: PropTypes.string
};

export default ModalBody;
