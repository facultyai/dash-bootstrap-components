import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalFooter from 'react-bootstrap/ModalFooter';

import {getLoadingState} from '../../private/util';

/**
 * Add a footer to any Modal.
 */
function ModalFooter({children, class_name, tag, className, ...otherProps}) {
  return (
    <RBModalFooter
      as={tag}
      className={class_name || className}
      data-dash-is-loading={getLoadingState() || undefined}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBModalFooter>
  );
}

ModalFooter.propTypes = {
  /**
   * The children of the ModalFooter.
   */
  children: PropTypes.node,

  /**
   * The ID of the ModalFooter.
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the ModalFooter.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ModalFooter
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the ModalFooter, default: div
   */
  tag: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the ModalFooter
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ModalFooter;
