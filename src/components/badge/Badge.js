import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBBadge from 'react-bootstrap/Badge';
import Link from '../../private/Link';
import {bootstrapColors} from '../../private/BootstrapColors';
import {sanitizeAndCheckUrl} from '../../private/util';

/**
 * Badges can be used to add counts or labels to other components.
 */
const Badge = props => {
  const {
    children,
    href,
    loading_state,
    setProps,
    color,
    style,
    className,
    class_name,
    text_color,
    ...otherProps
  } = props;

  const sanitizedUrl = sanitizeAndCheckUrl(href, setProps);

  const incrementClicks = () => {
    if (setProps) {
      setProps({
        n_clicks: props.n_clicks + 1,
        n_clicks_timestamp: Date.now()
      });
    }
  };
  const isBootstrapColor = bootstrapColors.has(color);

  otherProps[href ? 'preOnClick' : 'onClick'] = incrementClicks;

  return (
    <RBBadge
      as={sanitizedUrl && Link}
      href={sanitizedUrl}
      bg={isBootstrapColor ? color : null}
      text={text_color}
      className={class_name || className}
      style={!isBootstrapColor ? {backgroundColor: color, ...style} : style}
      {...omit(['setProps', 'n_clicks', 'n_clicks_timestamp'], otherProps)}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      {children}
    </RBBadge>
  );
};

Badge.defaultProps = {
  color: 'secondary',
  n_clicks: 0,
  n_clicks_timestamp: -1
};

Badge.propTypes = {
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
   * Badge color, options: primary, secondary, success, info, warning, danger,
   * link or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name)
   * Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Badge color, options: primary, secondary, success, info, warning, danger,
   * link or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name)
   * Default: secondary.
   */
  text_color: PropTypes.string,

  /**
   * Make badge "pill" shaped (rounded ends, like a pill). Default: False.
   */
  pill: PropTypes.bool,

  /**
   * Attach link to badge.
   */
  href: PropTypes.string,

  /**
   * HTML tag to use for the Badge. Default: span.
   */
  tag: PropTypes.string,

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
  }),

  /**
   * If true, the browser will treat this as an external link,
   * forcing a page refresh at the new location. If false,
   * this just changes the location without triggering a page
   * refresh. Use this if you are observing dcc.Location, for
   * instance. Defaults to true for absolute URLs and false
   * otherwise.
   */
  external_link: PropTypes.bool,

  /**
   * An integer that represents the number of times
   * that this element has been clicked on.
   */
  n_clicks: PropTypes.number,

  /**
   * An integer that represents the time (in ms since 1970)
   * at which n_clicks changed. This can be used to tell
   * which button was changed most recently.
   */
  n_clicks_timestamp: PropTypes.number,

  /**
   * Target attribute to pass on to the link. Only applies to external links.
   */
  target: PropTypes.string,

  /**
   * Sets the title attribute of the underlying HTML button.
   */
  title: PropTypes.string
};

export default Badge;
