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
  className,
  class_name,
  flush,
  tag = 'ul',
  numbered = false,
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
   * HTML tag to use for the list, default: ul
   */
  tag: PropTypes.string,

  /**
   * When True the `list-group-flush` class is applied which removes some borders
   * and rounded corners from the list group in order that they can be rendered
   * edge-to-edge in the parent container (e.g. a Card).
   */
  flush: PropTypes.bool,

  /**
   * Set to True for a horizontal ListGroup, or supply one of the breakpoints
   * as a string for a ListGroup that is horizontal at that breakpoint and up.
   *
   * Note that horizontal ListGroups cannot be combined with flush ListGroups,
   * so if flush is True then horizontal has no effect.
   */
  horizontal: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Generate numbered list items.
   */
  numbered: PropTypes.bool
};

export default ListGroup;
