import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {Progress as RSProgress} from 'reactstrap';

const Progress = props => {
  const {children, loading_state, ...otherProps} = props;
  return (
    <RSProgress
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
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
   * warning, danger, info.
   */
  color: PropTypes.string,

  /**
   * CSS classes to apply to the bar.
   */
  barClassName: PropTypes.string,

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
