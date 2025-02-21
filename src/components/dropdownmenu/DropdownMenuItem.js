import React, {useContext} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBDropdown from 'react-bootstrap/Dropdown';

import {DropdownMenuContext} from '../../private/DropdownMenuContext';
import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Use DropdownMenuItem to build up the content of a DropdownMenu.
 */
function DropdownMenuItem({
  children,
  href,
  n_clicks = 0,
  class_name,
  disabled,
  header,
  divider,
  toggle = true,
  target,
  className,
  setProps,
  ...otherProps
}) {
  const context = useContext(DropdownMenuContext);

  const handleClick = e => {
    if (!disabled && setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
    if (toggle && context.isOpen) {
      context.toggle(e);
    }
  };

  const useLink = href && !disabled;
  otherProps[useLink ? 'preOnClick' : 'onClick'] = e => handleClick(e);

  if (header) {
    return <RBDropdown.Header>{children}</RBDropdown.Header>;
  } else if (divider) {
    return <RBDropdown.Divider />;
  }

  return (
    <RBDropdown.Item
      as={useLink ? Link : 'button'}
      href={useLink ? href : undefined}
      disabled={disabled}
      target={useLink ? target : undefined}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBDropdown.Item>
  );
}

DropdownMenuItem.propTypes = {
  /**
   * The children of this DropdownMenuItem.
   */
  children: PropTypes.node,

  /**
   * The ID of the DropdownMenuItem.
   */
  id: PropTypes.string,

  /**
   * A URL to link to, if the DropdownMenuItem is clicked.
   */
  href: PropTypes.string,

  /**
   * If True, clicking on the DropdownMenuItem will behave like a hyperlink. If False,
   * the DropdownMenuItem will behave like a dcc.Link component, and can be used in
   * conjunction with dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * The number of times the DropdownMenuItem has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Additional inline CSS styles to apply to the DropdownMenuItem.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the DropdownMenuItem
   */
  class_name: PropTypes.string,

  /**
   * Style this item as 'active'.
   */
  active: PropTypes.bool,

  /**
   * Style this item as 'disabled'.
   */
  disabled: PropTypes.bool,

  /**
   * Set to True if this entry is a divider. Typically, it will have
   * no children.
   */
  divider: PropTypes.bool,

  /**
   * Set to True if this is a header, rather than a conventional
   * menu item.
   */
  header: PropTypes.bool,

  /**
   * Whether to toggle the DropdownMenu on click. Default: True.
   */
  toggle: PropTypes.bool,

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
   * Additional CSS classes to apply to the DropdownMenuItem
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   **/
  setProps: PropTypes.func
};

export default DropdownMenuItem;
