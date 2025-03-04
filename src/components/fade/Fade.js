import React, {useState} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFade from 'react-bootstrap/Fade';

import {getLoadingState} from '../../private/util';

/**
 * Hide or show content with a fading animation. Visibility of the children is
 * controlled by the `is_open` prop which can be targetted by callbacks.
 */
const Fade = React.forwardRef(function Fade(
  {children, is_in, style, class_name, tag, className, ...otherProps},
  ref
) {
  // set visibility to hidden after transition has completed to hide tooltips
  const [hidden, setHidden] = useState(!is_in);

  return (
    <RBFade
      in={is_in}
      style={hidden ? {visibility: 'hidden', ...style} : style}
      onEnter={() => setHidden(false)}
      onExited={() => setHidden(true)}
      className={class_name || className}
      as={tag}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      <div ref={ref}>{children}</div>
    </RBFade>
  );
});

Fade.propTypes = {
  /**
   * The children of the Fade
   */
  children: PropTypes.node,

  /**
   * The ID of the Fade
   */
  id: PropTypes.string,

  /**
   * Controls whether the children of the Fade component are currently visible
   * or not.
   */
  is_in: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Fade.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Fade
   */
  class_name: PropTypes.string,

  /**
   * The duration of the transition, in milliseconds.
   *
   * You may specify a single timeout for all transitions like: `timeout=500`
   * or individually like: timeout={'enter': 300, 'exit': 500}
   */
  timeout: PropTypes.oneOfType([
    PropTypes.number,
    PropTypes.shape({enter: PropTypes.number, exit: PropTypes.number})
      .isRequired
  ]),

  /**
   * Show fade-in animation on initial page load. Default: True.
   */
  appear: PropTypes.bool,

  /**
   * Enable or disable enter transitions. Default: True.
   */
  enter: PropTypes.bool,

  /**
   * Enable or disable exit transitions. Default: True.
   */
  exit: PropTypes.bool,

  /**
   * HTML tag to use for the fade component. Default: div.
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
   * Additional CSS classes to apply to the Fade
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Fade;
