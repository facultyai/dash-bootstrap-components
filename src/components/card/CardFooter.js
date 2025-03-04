import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCard from 'react-bootstrap/Card';

import {getLoadingState} from '../../private/util';

/**
 * Use the CardFooter component to add a footer to any card.
 */
function CardFooter({children, class_name, className, ...otherProps}) {
  return (
    <RBCard.Footer
      data-dash-is-loading={getLoadingState() || undefined}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCard.Footer>
  );
}

CardFooter.propTypes = {
  /**
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * The ID of the component
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the CardFooter.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardFooter
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the card footer, default: div
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
   * Additional CSS classes to apply to the CardFooter
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardFooter;
