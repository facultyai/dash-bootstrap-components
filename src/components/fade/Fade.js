import React, {useState} from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFade from 'react-bootstrap/Fade';

/**
 * Hide or show content with a fading animation. Visibility of the children is
 * controlled by the `is_open` prop which can be targetted by callbacks.
 */
const Fade = React.forwardRef((props, ref) => {
  const {
    children,
    is_in,
    loading_state,
    style,
    className,
    class_name,
    tag,
    ...otherProps
  } = props;

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
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      <div ref={ref}>{children}</div>
    </RBFade>
  );
});

Fade.propTypes = {
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
   * Controls whether the children of the Fade component are currently visible
   * or not.
   */
  is_in: PropTypes.bool,

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
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  })
};

export default Fade;
