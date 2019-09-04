import React from 'react';
import PropTypes from 'prop-types';
import {Button as RSButton} from 'reactstrap';

const Button = props => {
  const {children, loading_state, ...otherProps} = props;
  return (
    <RSButton
      onClick={() => {
        if (props.setProps) {
          props.setProps({
            n_clicks: props.n_clicks + 1,
            n_clicks_timestamp: Date.now()
          });
        }
      }}
      {...otherProps}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      {children}
    </RSButton>
  );
};

Button.defaultProps = {
  n_clicks: 0,
  n_clicks_timestamp: -1
};

Button.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
   */
  children: PropTypes.node,

  /**
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * An integer that represents the number of times
   * that this element has been clicked on.
   */
  n_clicks: PropTypes.number,

  /**
   * Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
   * See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.
   *
   * An integer that represents the time (in ms since 1970)
   * at which n_clicks changed. This can be used to tell
   * which button was changed most recently.
   */
  n_clicks_timestamp: PropTypes.number,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info.
   */
  key: PropTypes.string,

  /**
   * Whether button is in active state. Default: False.
   */
  active: PropTypes.bool,

  /**
   * Create block level button, one that spans the full width of its parent.
   * Default: False
   */
  block: PropTypes.bool,

  /**
   * Button color, options: primary, secondary, success, info, warning, danger,
   * link. Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Disable button (make unclickable). Default: False.
   */
  disabled: PropTypes.bool,

  /**
   * Button size, options: 'lg', 'md', 'sm'.
   */
  size: PropTypes.string,

  /**
   * Set outline button style, which removes background images and colors for a
   * lightweight style.
   */
  outline: PropTypes.bool,

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

export default Button;