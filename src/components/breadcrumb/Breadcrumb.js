import React from 'react';

import PropTypes from 'prop-types';
import RBBreadcrumb from 'react-bootstrap/Breadcrumb';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Use breadcrumbs to create a navigation breadcrumb in your app.
 */
function Breadcrumb({
  items,
  class_name,
  className,
  item_style,
  item_class_name,
  itemClassName,
  tag,
  ...otherProps
}) {
  return (
    <RBBreadcrumb
      as={tag}
      data-dash-is-loading={getLoadingState() || undefined}
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
          style={item_style}
        >
          {item.label}
        </RBBreadcrumb.Item>
      ))}
    </RBBreadcrumb>
  );
}

Breadcrumb.propTypes = {
  /**
   * The ID of the Breadcrumb.
   */
  id: PropTypes.string,

  /**
   * The details of the items to render inside of this component.
   */
  items: PropTypes.arrayOf(
    PropTypes.shape({
      /**
       * The label to display inside the breadcrumbs.
       */
      label: PropTypes.string,
      /**
       * URL of the resource to link to
       */
      href: PropTypes.string,
      /**
       * If True, the item will be displayed as active.
       */
      active: PropTypes.bool,
      /**
       * If True, clicking on the item will behave like a hyperlink. If False, the item
       * will behave like a dcc.Link component, and can be used in conjunction with
       * dcc.Location for navigation within a Dash app.
       */
      external_link: PropTypes.bool,
      /**
       * Target attribute to pass on to the link. Only applies to external links.
       */
      target: PropTypes.string,
      /**
       * Title attribute for the inner anchor element
       */
      title: PropTypes.string
    })
  ),

  /**
   * Additional inline CSS styles to apply to the Breadcrumb.
   */
  style: PropTypes.object,

  /**
   * Additional inline CSS styles to apply to each item.
   */
  item_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Breadcrumb.
   */
  class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to each item.
   */
  item_class_name: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** - Use class_name instead.
   *
   * Additional CSS classes to apply to the Breadcrumb.
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** - use item_class_name instead.
   *
   * Additional CSS classes to apply to each item.
   */
  itemClassName: PropTypes.string,

  /**
   * HTML tag to use for the outer breadcrumb component. Default: "nav".
   */
  tag: PropTypes.object,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Breadcrumb;
