import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBStack from 'react-bootstrap/Stack';

import {getLoadingState} from '../../private/util';

/**
 * Stacks are shorthand helpers that build on top of existing flexbox
 * utilities to make component layout faster and easier than ever.
 */
function Stack({children, className, class_name, ...otherProps}) {
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
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Which direction to stack the objects in
   */
  direction: PropTypes.oneOf(['vertical', 'horizontal']),

  /**
   * Set the spacing between each item (0 - 5)
   */
  gap: PropTypes.number
};

export default Stack;
