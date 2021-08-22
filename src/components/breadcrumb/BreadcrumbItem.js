import React, {useState, useEffect} from 'react';
import PropTypes from 'prop-types';
import RBBreadcrumbItem from 'react-bootstrap/BreadcrumbItem';
import {History} from '@plotly/dash-component-plugins';
import Link from '../../private/Link';

/**
 * Use breadcrumbItems to create a link within a Breadcrumb.
 */
const BreadcrumbItem = props => {
  const {
    children,
    tag,
    class_name,
    href,
    active,
    external_link,
    ...otherProps
  } = props;

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

  return (
    <RBBreadcrumbItem
      linkAs={Link}
      as={tag}
      className={class_name}
      active={linkActive}
      href={href}
      linkProps={{external_link}}
      {...otherProps}
    >
      {children}
    </RBBreadcrumbItem>
  );
};

BreadcrumbItem.defaultProps = {
  active: false
};

BreadcrumbItem.propTypes = {
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
   * URL of the resource to link to
   */
  href: PropTypes.string,

  /**
   * If true, the browser will treat this as an external link,
   * forcing a page refresh at the new location. If false,
   * this just changes the location without triggering a page
   * refresh. Use this if you are observing dcc.Location, for
   * instance. Defaults to true for absolute URLs and false
   * otherwise.
   *
   */
  external_link: PropTypes.bool,

  /**
   * Target attribute to pass on to the link. Only applies to external links.
   */
  target: PropTypes.string,

  /**
   * title attribute for the inner a element
   */
  title: PropTypes.string,

  /**
   * HTML tag to use for the inner link. Default: li.
   */
  tag: PropTypes.object
};

export default BreadcrumbItem;
