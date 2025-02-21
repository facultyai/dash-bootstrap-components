import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBButtonGroup from 'react-bootstrap/ButtonGroup';

import {getLoadingState} from '../../private/util';

/**
 * A component for creating groups of buttons. Can be used with `Button` or
 * `DropdownMenu`.
 */
function ButtonGroup({children, class_name, className, ...otherProps}) {
  return (
    <RBButtonGroup
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBButtonGroup>
  );
}

ButtonGroup.propTypes = {
  /**
   * The children of this ButtonGroup
   */
  children: PropTypes.node,

  /**
   * The ID of the ButtonGroup
   */
  id: PropTypes.string,

  /**
   * Size of button group, options: 'sm', 'md', 'lg'.
   */
  size: PropTypes.string,

  /**
   * Group buttons vertically.
   */
  vertical: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the ButtonGroup.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ButtonGroup
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
   * Additional CSS classes to apply to the ButtonGroup
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ButtonGroup;
