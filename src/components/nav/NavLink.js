import React, {useEffect, useState} from 'react';

import {History} from '@plotly/dash-component-plugins';
import classNames from 'classnames';
import PropTypes from 'prop-types';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Add a link to a `Nav`. Can be used as a child of `NavItem` or of `Nav` directly.
 */
const NavLink = ({
  children,
  href,
  n_clicks = 0,
  active = false,
  disabled = false,
  class_name,
  className,
  setProps,
  ...otherProps
}) => {
  const [linkActive, setLinkActive] = useState(false);

  const pathnameToActive = pathname => {
    setLinkActive(
      active === true ||
        (active === 'exact' && pathname === href) ||
        (active === 'partial' && pathname.startsWith(href))
    );
  };

  useEffect(() => {
    pathnameToActive(window.location.pathname);

    if (typeof active === 'string') {
      History.onChange(() => {
        pathnameToActive(window.location.pathname);
      });
    }
  }, [active]);

  const incrementClicks = () => {
    if (!disabled && setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };

  const classes = classNames(class_name || className, 'nav-link', {
    active: linkActive,
    disabled
  });

  return (
    <Link
      className={classes}
      disabled={disabled}
      preOnClick={incrementClicks}
      href={href}
      {...otherProps}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </Link>
  );
};

NavLink.propTypes = {
  /**
   * The children of the NavLink.
   */
  children: PropTypes.node,
  /**
   * The ID of the NavLink.
   */
  id: PropTypes.string,

  /**
   * The URL of the linked resource.
   */
  href: PropTypes.string,

  /**
   * The number of times the NavLink has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Apply 'active' style to this component. Set to "exact" to automatically
   * toggle active status when the current pathname matches href, or to
   * "partial" to automatically toggle on a partial match. Assumes that href is
   * a relative url such as /link rather than an absolute such as
   * https://example.com/link
   *
   * For example
   * - dbc.NavLink(..., href="/my-page", active="exact") will be active on
   *   "/my-page" but not "/my-page/other" or "/random"
   * - dbc.NavLink(..., href="/my-page", active="partial") will be active on
   *   "/my-page" and "/my-page/other" but not "/random"
   */
  active: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.oneOf(['partial', 'exact'])
  ]),

  /**
   * Disable the link
   */
  disabled: PropTypes.bool,

  /**
   * If True, clicking on the NavLink will behave like a hyperlink. If False, the
   * NavLink will behave like a dcc.Link component, and can be used in conjunction with
   * dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the NavLink.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the NavLink.
   */
  class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the NavLink.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the input changes.
   */
  setProps: PropTypes.func
};

export default NavLink;
