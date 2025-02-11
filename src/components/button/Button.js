import React from 'react';

import PropTypes from 'prop-types';
import RBButton from 'react-bootstrap/Button';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * A component for creating Bootstrap buttons with different style options. The
 * Button component can act as a HTML button, link (<a>) or can be used like a
 * dash_core_components style `Link` for navigating between pages of a Dash app.
 *
 * Use the `n_clicks` prop to trigger callbacks when the button has been
 * clicked.
 */
function Button({
  children,
  disabled,
  href,
  setProps,
  target,
  type,
  download,
  name,
  value,
  className,
  class_name,
  color,
  outline,
  rel,
  n_clicks = 0,
  ...otherProps
}) {
  const incrementClicks = () => {
    if (!disabled && setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };
  const useLink = href && !disabled;
  otherProps[useLink ? 'preOnClick' : 'onClick'] = incrementClicks;

  if (useLink) {
    // react-bootstrap strips out target prop if tag isn't an anchor element,
    // so we pass it through under a different name
    otherProps['linkTarget'] = target;
  }

  return (
    <RBButton
      as={useLink ? Link : 'button'}
      variant={outline ? `outline-${color}` : color}
      type={useLink ? undefined : type}
      href={disabled ? undefined : href}
      disabled={disabled}
      download={useLink ? download : undefined}
      name={useLink ? undefined : name}
      value={useLink ? undefined : value}
      className={class_name || className}
      rel={useLink ? rel : undefined}
      {...otherProps}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBButton>
  );
}

Button.propTypes = {
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
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Pass a URL (relative or absolute) to make the menu entry a link.
   */
  href: PropTypes.string,

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
   * Whether button is in active state. Default: False.
   */
  active: PropTypes.bool,

  /**
   * Button color, options: primary, secondary, success, info, warning, danger,
   * link. Default: primary.
   */
  color: PropTypes.string,

  /**
   * Disable button (make unclickable). Default: False.
   */
  disabled: PropTypes.bool,

  /**
   * Button size, options: 'lg', 'md', 'sm'.
   */
  size: PropTypes.string,

  /**
   * Sets the title attribute of the underlying HTML button.
   */
  title: PropTypes.string,

  /**
   * Set outline button style, which removes background images and colors for a
   * lightweight style.
   */
  outline: PropTypes.bool,

  /**
   * Target attribute to pass on to link if using Button as an external link.
   */
  target: PropTypes.string,

  /**
   * The default behavior of the button. Possible values are: "button", "reset",
   * "submit". If left unspecified the default depends on usage: for buttons
   * associated with a form (e.g. a dbc.Button inside a dbc.Form) the default is
   * "submit". Otherwise the default is "button".
   */
  type: PropTypes.oneOf(['button', 'reset', 'submit']),

  /**
   * Indicates that the hyperlink is to be used for downloading a resource.
   */
  download: PropTypes.string,

  /**
   * The name of the button, submitted as a pair with the button’s value as part
   * of the form data.
   */
  name: PropTypes.string,

  /**
   * Defines the value associated with the button’s name when it’s submitted
   * with the form data. This value is passed to the server in params when the
   * form is submitted.
   */
  value: PropTypes.string,

  /**
   * Set the rel attribute when Button is being used as a Link.
   */
  rel: PropTypes.string,

  setProps: PropTypes.func
};

export default Button;
