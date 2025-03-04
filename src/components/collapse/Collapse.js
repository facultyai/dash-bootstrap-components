import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCollapse from 'react-bootstrap/Collapse';

import {getLoadingState} from '../../private/util';

/**
 * Hide or show content with a vertical collapsing animation. Visibility of the
 * children is controlled by the `is_open` prop which can be targetted by
 * callbacks.
 */
const Collapse = React.forwardRef(function Collapse(
  {
    children,
    is_open,
    navbar,
    className,
    class_name,
    tag,
    dimension = 'height',
    ...otherProps
  },
  ref
) {
  return (
    <RBCollapse
      in={is_open}
      as={tag}
      className={class_name || className}
      dimension={dimension}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      <div ref={ref} className={navbar && 'navbar-collapse'}>
        {children}
      </div>
    </RBCollapse>
  );
});

Collapse.propTypes = {
  /**
   * The children of the Collapse.
   */
  children: PropTypes.node,

  /**
   * The ID of the Collapse.
   */
  id: PropTypes.string,

  /**
   * Whether collapse is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * The dimension used when collapsing e.g. height will collapse vertically,
   * whilst width will collapse horizontally
   */
  dimension: PropTypes.oneOf(['height', 'width']),

  /**
   * Set to True when using a collapse inside a navbar.
   */
  navbar: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Collapse.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Collapse.
   */
  class_name: PropTypes.string,

  /**
   * The HTML tag used for the collapse component.
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
   * Additional CSS classes to apply to the Collapse.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Collapse;
