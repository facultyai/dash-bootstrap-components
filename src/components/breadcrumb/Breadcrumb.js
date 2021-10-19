import React from 'react';
import PropTypes from 'prop-types';
import RBBreadcrumb from 'react-bootstrap/Breadcrumb';

import Link from '../../private/Link';

/**
 * Use breadcrumbs to create a navigation breadcrumb in your app.
 */
const Breadcrumb = ({
  items,
  tag,
  loading_state,
  class_name,
  className,
  item_class_name,
  itemClassName,
  item_style,
  ...otherProps
}) => (
  <RBBreadcrumb
    as={tag}
    data-dash-is-loading={
      (loading_state && loading_state.is_loading) || undefined
    }
    className={class_name || className}
    {...otherProps}
  >
    {(items || []).map((item, idx) => (
      <RBBreadcrumb.Item
        key={`${item.value}${idx}`}
        active={item.active}
        linkAs={item.href && Link}
        className={item_class_name || itemClassName}
        href={item.href}
        linkProps={item.href && {external_link: item.external_link}}
      >
        {item.label}
      </RBBreadcrumb.Item>
    ))}
  </RBBreadcrumb>
);

Breadcrumb.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The details of the items to render inside of this component.
   */
  items: PropTypes.arrayOf(
    PropTypes.shape({
      /**
       * Label to display inside the breadcrumbs.
       */
      label: PropTypes.string,
      /**
       * URL of the resource to link to
       */
      href: PropTypes.string,
      /**
       * Apply 'active' style to this component.
       */
      active: PropTypes.bool,
      /**
       * If true, the browser will treat this as an external link, forcing a
       * page refresh at the new location. If false, this just changes the
       * location without triggering a page refresh. Use this if you are
       * observing dcc.Location, for instance. Defaults to true for absolute
       * URLs and false otherwise.
       */
      external_link: PropTypes.bool,
      /**
       * Target attribute to pass on to the link. Only applies to external links.
       */
      target: PropTypes.string,
      /**
       * title attribute for the inner a element
       */
      title: PropTypes.string
    })
  ),

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Defines inline CSS styles that will be added to each item in the
   * breadcrumbs.
   */
  item_style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** - Use class_name instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * Class name to apply to each item.
   */
  item_class_name: PropTypes.string,

  /**
   * **DEPRECATED** - use item_class_name instead.
   *
   * Class name ot apply to each item.
   */
  itemClassName: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * HTML tag to use for the outer breadcrumb component. Default: "nav".
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
