import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBInputGroup from 'react-bootstrap/InputGroup';

import {getLoadingState} from '../../private/util';

/**
 * A component for grouping together inputs and buttons, dropdowns or text.
 */
function InputGroup({children, class_name, className, ...otherProps}) {
  return (
    <RBInputGroup
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBInputGroup>
  );
}

InputGroup.propTypes = {
  /**
   * The children of this InputGroup.
   */
  children: PropTypes.node,

  /**
   * The ID of the InputGroup.
   */
  id: PropTypes.string,

  /**
   * Set the size of the Input. Options: 'sm' (small), 'md' (medium)
   * or 'lg' (large). Default is 'md'.
   */
  size: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the InputGroup.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the InputGroup
   */
  class_name: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the InputGroup
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default InputGroup;
