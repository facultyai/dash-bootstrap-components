import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBPopoverHeader from 'react-bootstrap/PopoverHeader';

import {getLoadingState} from '../../private/util';

/**
 * Creates a header for use inside the `Popover` component.
 */
function PopoverHeader({children, class_name, className, ...otherProps}) {
  return (
    <RBPopoverHeader
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBPopoverHeader>
  );
}

PopoverHeader.propTypes = {
  /**
   * The children of this PopoverHeader.
   */
  children: PropTypes.node,

  /**
   * The ID of the PopoverHeader.
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the PopoverHeader.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the PopoverHeader.
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the PopoverHeader, default: h3
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
   * Additional CSS classes to apply to the PopoverHeader.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default PopoverHeader;
