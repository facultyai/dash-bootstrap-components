import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNav from 'react-bootstrap/Nav';

import {getLoadingState} from '../../private/util';

const horizontalMap = {
  start: 'justify-content-start',
  center: 'justify-content-center',
  end: 'justify-content-end',
  around: 'justify-content-around',
  between: 'justify-content-between'
};

const verticalMap = {
  xs: 'flex-xs-column',
  sm: 'flex-sm-column',
  md: 'flex-md-column',
  lg: 'flex-lg-column',
  xl: 'flex-xl-column'
};

/**
 * Nav can be used to group together a collection of navigation links.
 */
function Nav({
  children,
  pills,
  vertical,
  horizontal,
  justified,
  navbar_scroll,
  class_name,
  className,
  ...otherProps
}) {
  const horizontalClass = horizontal && horizontalMap[horizontal];

  const verticalClass =
    vertical === true ? 'flex-column' : vertical && verticalMap[vertical];

  const classes = classNames(
    class_name || className,
    horizontalClass,
    verticalClass
  );

  return (
    <RBNav
      className={classes}
      variant={pills ? 'pills' : null}
      justify={justified}
      navbarScroll={navbar_scroll}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBNav>
  );
}

Nav.propTypes = {
  /**
   * The children of the Nav.
   */
  children: PropTypes.node,

  /**
   * The ID of the Nav.
   */
  id: PropTypes.string,

  /**
   * Apply pill styling to nav items. Active items will be indicated by a pill.
   */
  pills: PropTypes.bool,

  /**
   * Stack NavItems vertically. Set to True for a vertical Nav on all screen sizes, or
   * pass one of the Bootstrap breakpoints ('xs', 'sm', 'md', 'lg', 'xl') for a Nav
   * which is vertical at that breakpoint and above, and horizontal on smaller screens.
   */
  vertical: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Specify the horizontal alignment of the NavItems. Options are 'start', 'center', or
   * 'end'.
   */
  horizontal: PropTypes.oneOf(['start', 'center', 'end', 'between', 'around']),

  /**
   * Expand the nav items to fill available horizontal space.
   */
  fill: PropTypes.bool,

  /**
   * Expand the nav items to fill available horizontal space, making sure every nav item
   * has the same width.
   */
  justified: PropTypes.bool,

  /**
   * Set to True when using Nav with pills styling inside a CardHeader.
   */
  card: PropTypes.bool,

  /**
   * Set to True if using Nav in Navbar component. This applies the `navbar-nav` class
   * to the Nav which uses more lightweight styles to match the parent Navbar better.
   */
  navbar: PropTypes.bool,

  /**
   * Enable vertical scrolling within the toggleable contents of a collapsed Navbar.
   */
  navbar_scroll: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Nav.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Nav
   */
  class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the Nav
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Nav;
