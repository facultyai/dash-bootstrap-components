import React from 'react';

import PropTypes from 'prop-types';
import RBListGroupItem from 'react-bootstrap/ListGroupItem';

import {bootstrapColors} from '../../private/BootstrapColors';
import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Create a single item in a `ListGroup`.
 */
function ListGroupItem({
  children,
  n_clicks = 0,
  href,
  disabled,
  color,
  target,
  style,
  class_name,
  className,
  setProps,
  ...otherProps
}) {
  const incrementClicks = () => {
    if (!disabled && setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };
  const isBootstrapColor = bootstrapColors.has(color);
  const useLink = href && !disabled;
  otherProps[useLink ? 'preOnClick' : 'onClick'] = incrementClicks;

  return (
    <RBListGroupItem
      as={useLink ? Link : 'li'}
      href={href}
      target={useLink ? target : undefined}
      disabled={disabled}
      variant={isBootstrapColor ? color : null}
      style={!isBootstrapColor ? {backgroundColor: color, ...style} : style}
      className={class_name || className}
      {...otherProps}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBListGroupItem>
  );
}

ListGroupItem.propTypes = {
  /**
   * The children of this ListGroupItem.
   */
  children: PropTypes.node,

  /**
   * The ID of the ListGroupItem.
   */
  id: PropTypes.string,

  /**
   * The number of times the ListGroupItem has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Additional inline CSS styles to apply to the ListGroupItem.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ListGroupItem.
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the ListGroupItem, default: li
   */
  tag: PropTypes.string,

  /**
   * Set to True to apply the "active" style to this item.
   */
  active: PropTypes.bool,

  /**
   * If True, the item will be disabled.
   */
  disabled: PropTypes.bool,

  /**
   * Item color, options: primary, secondary, success, info, warning, danger, or any
   * valid CSS color of your choice (e.g. a hex code, a decimal code or a CSS color
   * name). Default: secondary
   */
  color: PropTypes.string,

  /**
   * Apply list-group-item-action class for hover animation etc.
   */
  action: PropTypes.bool,

  /**
   * Pass a URL (relative or absolute) to make the list group item a link.
   */
  href: PropTypes.string,

  /**
   * If True, clicking on the ListGroupItem will behave like a hyperlink. If False, the
   * ListGroupItem will behave like a dcc.Link component, and can be used in conjunction
   * with dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * Target attribute to pass on to the link. Only applies to external links.
   */
  target: PropTypes.string,

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
   * Additional CSS classes to apply to the ListGroupItem
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ListGroupItem;
