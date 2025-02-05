import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {getLoadingState} from '../../private/util';

/**
 * Creates a header for use inside the `Popover` component.
 */
const PopoverHeader = props => {
  const {children, className, class_name, ...otherProps} = props;
  return (
    <RBPopoverHeader
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBPopoverHeader>
  );
};

PopoverHeader.propTypes = {
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
   * HTML tag to use for the PopoverHeader, default: h3
   */
  tag: PropTypes.string
};

export default PopoverHeader;
