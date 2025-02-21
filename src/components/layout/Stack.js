import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBStack from 'react-bootstrap/Stack';

import {getLoadingState} from '../../private/util';

/**
 * Stacks are shorthand helpers that build on top of existing flexbox
 * utilities to make component layout faster and easier than ever.
 */
function Stack({children, class_name, className, ...otherProps}) {
  return (
    <RBStack
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBStack>
  );
}

Stack.defaultPropTypes = {
  direction: 'vertical'
};

Stack.propTypes = {
  /**
   * The children of this Stack
   */
  children: PropTypes.node,

  /**
   * The ID of the Stack
   */
  id: PropTypes.string,

  /**
   * Which direction to stack the objects in
   */
  direction: PropTypes.oneOf(['vertical', 'horizontal']),

  /**
   * Set the spacing between each item (0 - 5)
   */
  gap: PropTypes.number,

  /**
   * Additional inline CSS styles to apply to the Stack.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Stack
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
   * Additional CSS classes to apply to the Stack
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Stack;
