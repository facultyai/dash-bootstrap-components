import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalBody from 'react-bootstrap/ModalBody';

import {getLoadingState} from '../../private/util';

/**
 * Use this component to add consistent padding to the body (main content) of your
 * Modals.
 */
function ModalBody({children, class_name, tag, className, ...otherProps}) {
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
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * The ID of the component
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the ModalBody.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ModalBody.
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the ModalBody, default: div
   */
  tag: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the ModalBody.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ModalBody;
