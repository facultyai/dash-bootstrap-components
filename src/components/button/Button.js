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
  n_clicks = 0,
  color,
  outline,
  disabled,
  href,
  target,
  type,
  download,
  name,
  value,
  class_name,
  className,
  rel,
  setProps,
  // onClick prop needs to be overridable for dcc.ConfirmDialog
  // eslint-disable-next-line react/prop-types
  onClick,
  ...otherProps
}) {
  const incrementClicks = () => {
    if (!disabled && setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };
  const useLink = href && !disabled;
  otherProps[useLink ? 'preOnClick' : 'onClick'] = onClick || incrementClicks;

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
   * The children of this Button.
   */
  children: PropTypes.node,

  /**
   * The ID of the Button.
   */
  id: PropTypes.string,

  /**
   * The number of times the Button has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Button color, options: primary, secondary, success, info, warning, danger,
   * link. Default: primary.
   */
  color: PropTypes.string,

  /**
   * A URL to link to. If this property is set, the Button will behave like a dcc.Link
   * for relative links, and like an html <a> tag for external links. This can be
   * overridden with the `external_link` property.
   */
  href: PropTypes.string,

  /**
   * If True, clicking on the Button will behave like a hyperlink. If False, the Button
   * will behave like a dcc.Link component, and can be used in conjunction with
   * dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * Additional CSS classes to apply to the Button.
   */
  class_name: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Button.
   */
  style: PropTypes.object,

  /**
   * If True, the 'active' class is applied to the Button. Default: False.
   */
  active: PropTypes.bool,

  /**
   * If True, the Button will be disabled. Default: False.
   */
  disabled: PropTypes.bool,

  /**
   * The size of the Button. Options: 'sm', 'md', 'lg'.
   */
  size: PropTypes.string,

  /**
   * The title of the Button.
   */
  title: PropTypes.string,

  /**
   * If True, the outline style is applied to the Button. Default: False.
   */
  outline: PropTypes.bool,

  /**
   * The target attribute to pass on to the link. Only applies to external links.
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
   * If the Button is a link, this attribute specifies that the target will be
   * downloaded.
   */
  download: PropTypes.string,

  /**
   * The name of the button, submitted as a pair with the button’s value as part
   * of the form data.
   */
  name: PropTypes.string,

  /**
   * Defines the value associated with the button’s name when it’s submitted with the
   * form data. This value is passed to the server in params when the form is submitted.
   */
  value: PropTypes.string,

  /**
   * Set the rel attribute when Button is being used as a Link.
   */
  rel: PropTypes.string,

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
   * Additional CSS classes to apply to the Button
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Button;
