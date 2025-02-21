import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBPopoverBody from 'react-bootstrap/PopoverBody';

import {getLoadingState} from '../../private/util';

/**
 * Component for wrapping the body (i.e. main content) of a `Popover`.
 */
function PopoverBody({children, class_name, className, ...otherProps}) {
  return (
    <RBPopoverBody
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBPopoverBody>
  );
}

PopoverBody.propTypes = {
  /**
   * The children of this PopoverBody.
   */
  children: PropTypes.node,

  /**
   * The ID of the PopoverBody.
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the PopoverBody.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the PopoverBody
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the PopoverBody, default: div
   */
  tag: PropTypes.string,

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
   * Additional CSS classes to apply to the PopoverBody
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default PopoverBody;
