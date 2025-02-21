import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalTitle from 'react-bootstrap/ModalTitle';

import {getLoadingState} from '../../private/util';

/**
 * Add a title to any Modal. Should be used as a child of the ModalHeader.
 */
function ModalTitle({children, class_name, tag, className, ...otherProps}) {
  return (
    <RBModalTitle
      as={tag}
      className={class_name || className}
      data-dash-is-loading={getLoadingState() || undefined}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBModalTitle>
  );
}

ModalTitle.propTypes = {
  /**
   * The children of this ModalTitle
   */
  children: PropTypes.node,

  /**
   * The ID of the ModalTitle
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the ModalTitle.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ModalTitle
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the ModalTitle, default: div
   */
  tag: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the ModalTitle
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ModalTitle;
