import React from 'react';

import PropTypes from 'prop-types';
import RBCard from 'react-bootstrap/Card';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Use card link to add consistently styled links to your cards. Links can be
 * used like buttons, external links, or internal Dash style links.
 */
function CardLink({
  children,
  disabled,
  className,
  class_name,
  n_clicks = 0,
  setProps,
  ...otherProps
}) {
  const incrementClicks = () => {
    if (!disabled && setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };

  return (
    <RBCard.Link
      data-dash-is-loading={getLoadingState() || undefined}
      as={Link}
      preOnClick={incrementClicks}
      disabled={disabled}
      className={class_name || className}
      {...otherProps}
    >
      {children}
    </RBCard.Link>
  );
}

CardLink.propTypes = {
  /**
   * The ID of the CardLink
   */
  id: PropTypes.string,

  /**
   * The children of this CardLink
   */
  children: PropTypes.node,

  /**
   * URL of the resource to link to
   */
  href: PropTypes.string,

  /**
   * If True, clicking on the CardLink will behave like a hyperlink. If False, the
   * CardLink will behave like a dcc.Link component, and can be used in conjunction with
   * dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * The number of times the CardLink has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Additional inline CSS styles to apply to the CardLink.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardLink
   */
  class_name: PropTypes.string,

  /**
   * Target attribute to pass on to the link. Only applies to external links.
   */
  target: PropTypes.string,

  /**
   * If true, the link is disabled and can't be clicked on.
   */
  disabled: PropTypes.bool,

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
   * Additional CSS classes to apply to the CardLink
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardLink;
