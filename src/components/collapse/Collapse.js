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
const Collapse = React.forwardRef(
  (
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
  ) => {
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
  }
);

Collapse.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
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
   * Whether collapse is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * Set to True when using a collapse inside a navbar.
   */
  navbar: PropTypes.bool,

  /**
   * The dimension used when collapsing e.g. height will collapse vertically,
   * whilst width will collapse horizontally
   */
  dimension: PropTypes.oneOf(['height', 'width'])
};

export default Collapse;
