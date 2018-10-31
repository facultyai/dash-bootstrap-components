import PropTypes from 'prop-types';
import React from 'react';
import classNames from 'classnames';
import Link from '../../private/Link';

const NavLink = ({children, className, active, ...otherProps}) => {
  const classes = classNames(className, 'nav-link', {
    active,
    disabled: otherProps.disabled
  });
  return (
    <Link className={classes} {...otherProps}>
      {children}
    </Link>
  );
};

NavLink.defaultProps = {
  active: false,
  disabled: false
};

NavLink.propTypes = {
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
  className: PropTypes.string,

  /**
   * The URL of the linked resource.
   */
  href: PropTypes.string,

  /**
   * Apply 'active' style to this component
   */
  active: PropTypes.bool,

  /**
   * Disable the link
   */
  disabled: PropTypes.bool,

  dashEvents: PropTypes.oneOf(['click'])
};

export default NavLink;
