import React from 'react';
import PropTypes from 'prop-types';
import RBBreadcrumb from 'react-bootstrap/Breadcrumb';

/**
 * Use breadcrumbs to create a navigation breadcrumb in your app.
 */
const Breadcrumb = props => {
  const {
    children,
    tag,
    link_tag,
    loading_state,
    class_name,
    ...otherProps
  } = props;

  return (
    <RBBreadcrumb
      as={tag}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      className={class_name}
      {...otherProps}
    >
      {children}
    </RBBreadcrumb>
  );
};

Breadcrumb.propTypes = {
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
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * HTML tag to use for the outer breadcrumb component. Default: nav.
   */
  tag: PropTypes.object,

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

export default Breadcrumb;
