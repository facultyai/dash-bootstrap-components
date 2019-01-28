import React from 'react';
import PropTypes from 'prop-types';
import {Button as RSButton} from 'reactstrap';

const Button = props => {
  const {children, ...otherProps} = props;
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
   * Create block button.
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
   * Button size, options: lg, md, sm.
   */
  size: PropTypes.string,

  /**
   * Set outline button style.
   */
  outline: PropTypes.bool
};

export default Button;
