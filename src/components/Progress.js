import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {Progress as RSProgress} from 'reactstrap';
import {bootstrapColors} from '../private/BootstrapColors';

const CustomProgressTag = props => {
  // This is a little trick to enable us to pass styles to the outer div
  const {outer_style, style, ...otherProps} = props;
  return <div style={outer_style} {...otherProps} />;
};

/**
 * A component for creating progress bars just with CSS. Control the current
 * progress with a callback and the `value` prop.
 */
const Progress = props => {
  const {children, loading_state, bar_style, color, style, ...otherProps} = props;
  const isBootstrapColor = bootstrapColors.has(color); 
  return (
    <RSProgress
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      // reactstrap handles these inconsistently atm, have to swap around
      color={isBootstrapColor ? color : null}
      style={!isBootstrapColor ? {backgroundColor: color, ...bar_style} : bar_style}
      outer_style={style}
      tag={CustomProgressTag}
    >
      {children}
    </RSProgress>
  );
};

Progress.propTypes = {
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
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * HTML tag to use for the progress bar, default: div
   */
  tag: PropTypes.string,

  /**
   * Apply progress-bar class, for use inside a multi progress bar.
   */
  bar: PropTypes.bool,

  /**
   * Create container for multiple progress bars
   */
  multi: PropTypes.bool,

  /**
   * Upper limit for value, default: 100
   */
  max: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Specify progress, value from 0 to max inclusive.
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Animate the bar, must have striped set to True to work.
   */
  animated: PropTypes.bool,

  /**
   * Use striped progress bar
   */
  striped: PropTypes.bool,

  /**
   * Set color of the progress bar, options: primary, secondary, success,
   * warning, danger, info or any valid CSS color 
   * of your choice (e.g. a hex code, a decimal code or a CSS color name).
   */
  color: PropTypes.string,

  /**
   * CSS classes to apply to the bar.
   */
  barClassName: PropTypes.string,

  /**
   * Style arguments to pass to the bar.
   */
  bar_style: PropTypes.object,

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

export default Progress;
