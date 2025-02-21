import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBBadge from 'react-bootstrap/Badge';

import {bootstrapColors} from '../../private/BootstrapColors';
import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Badges can be used to add counts or labels to other components.
 */
function Badge({
  children,
  href,
  color = 'secondary',
  text_color,
  n_clicks = 0,
  style,
  class_name,
  className,
  setProps,
  ...otherProps
}) {
  const incrementClicks = () => {
    if (setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };
  const isBootstrapColor = bootstrapColors.has(color);

  otherProps[href ? 'preOnClick' : 'onClick'] = incrementClicks;

  return (
    <RBBadge
      as={href && Link}
      href={href}
      bg={isBootstrapColor ? color : null}
      text={text_color}
      className={class_name || className}
      style={!isBootstrapColor ? {backgroundColor: color, ...style} : style}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBBadge>
  );
}

Badge.propTypes = {
  /**
   * The children of the Badge.
   */
  children: PropTypes.node,

  /**
   * The ID of the Badge.
   */
  id: PropTypes.string,

  /**
   * Badge color, options: primary, secondary, success, info, warning, danger, link or
   * any valid CSS color of your choice (e.g. a hex code, a decimal code or a CSS
   * color name).
   *
   * Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Set the color of the text to one of the Bootstrap contextual colors.
   *
   * Options: primary, secondary, success, info, warning, danger, light or dark.
   */
  text_color: PropTypes.string,

  /**
   * The number of times the Badge has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * A URL to link to when the Badge is clicked.
   */
  href: PropTypes.string,

  /**
   * If True, clicking on the Badge will behave like a hyperlink. If False, the Badge
   * will behave like a dcc.Link component, and can be used in conjunction with
   * dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * Make badge "pill" shaped (rounded ends, like a pill). Default: False.
   */
  pill: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Badge.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Badge.
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the Badge. Default: span.
   */
  tag: PropTypes.string,

  /**
   * Target attribute to pass on to the link. Only applies to external links.
   */
  target: PropTypes.string,

  /**
   * Sets the title attribute of the underlying HTML button.
   */
  title: PropTypes.string,

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
   * Additional CSS classes to apply to the Badge.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Badge;
