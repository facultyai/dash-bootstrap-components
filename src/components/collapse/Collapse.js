import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCollapse from 'react-bootstrap/Collapse';

/**
 * Hide or show content with a vertical collapsing animation. Visibility of the
 * children is controlled by the `is_open` prop which can be targetted by
 * callbacks.
 */
const Collapse = React.forwardRef((props, ref) => {
  const {
    children,
    is_open,
    navbar,
    loading_state,
    className,
    class_name,
    tag,
    ...otherProps
  } = props;

  return (
    <RBCollapse
      in={is_open}
      as={tag}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      <div ref={ref} className={navbar && 'navbar-collapse'}>
        {children}
      </div>
    </RBCollapse>
  );
});

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
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  })
};

export default Collapse;
