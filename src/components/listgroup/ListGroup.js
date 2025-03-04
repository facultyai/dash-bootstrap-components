import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBListGroup from 'react-bootstrap/ListGroup';

import {getLoadingState} from '../../private/util';

/**
 * Bootstrap list groups are a flexible way to display a series of content. Use
 * in conjunction with `ListGroupItem`, `ListGroupItemHeading` and
 * `ListGroupItemText`.
 */
function ListGroup({
  children,
  numbered = false,
  flush,
  class_name,
  tag = 'ul',
  className,
  ...otherProps
}) {
  return (
    <RBListGroup
      className={class_name || className}
      variant={flush ? 'flush' : null}
      as={tag}
      numbered={numbered}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBListGroup>
  );
}

ListGroup.propTypes = {
  /**
   * The children of the ListGroup.
   */
  children: PropTypes.node,

  /**
   * The ID of the ListGroup.
   */
  id: PropTypes.string,

  /**
   * Generate numbered list items.
   */
  numbered: PropTypes.bool,

  /**
   * Set to True for a horizontal ListGroup, or supply one of the breakpoints as a
   * string for a ListGroup that is horizontal at that breakpoint and up.
   *
   * Note that horizontal ListGroups cannot be combined with flush ListGroups, so if
   * flush is True then horizontal has no effect.
   */
  horizontal: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * When True the `list-group-flush` class is applied which removes some borders and
   * rounded corners from the list group in order that they can be rendered edge-to-edge
   * in the parent container (e.g. a Card).
   */
  flush: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the ListGroup.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the ListGroup.
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the list, default: ul
   */
  tag: PropTypes.string,

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
   * Additional CSS classes to apply to the ListGroup.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default ListGroup;
