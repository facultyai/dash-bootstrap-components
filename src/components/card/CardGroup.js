import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCardGroup from 'react-bootstrap/CardGroup';

import {getLoadingState} from '../../private/util';

/**
 * Use CardGroup to render cards as a single, attached element of columns with
 * equal width and height.
 */
function CardGroup({children, className, class_name, ...otherProps}) {
  return (
    <RBCardGroup
      data-dash-is-loading={getLoadingState() || undefined}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCardGroup>
  );
}

CardGroup.propTypes = {
  /**
   * The children of this CardGroup
   */
  children: PropTypes.node,

  /**
   * The ID of the CardGroup
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the CardGroup.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardGroup
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the card group, default: div
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
   * Additional CSS classes to apply to the CardGroup
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardGroup;
