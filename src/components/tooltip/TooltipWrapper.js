import React from 'react';
import PropTypes from 'prop-types';
import {OverlayTrigger, Tooltip} from 'react-bootstrap';

/**
 * An alternative way of creating tooltips.
 */
const TooltipWrapper = ({
  children,
  text,
  placement,
  flip,
  delay,
  class_name,
  className,
  setProps,
  loading_state,
  ...otherProps
}) => {
  return (
    <OverlayTrigger
      placement={placement}
      flip={flip}
      delay={delay}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      overlay={
        <Tooltip className={class_name || className} {...otherProps}>
          {text}
        </Tooltip>
      }
    >
      <span>{children}</span>
    </OverlayTrigger>
  );
};

TooltipWrapper.defaultProps = {
  delay: {show: 0, hide: 50},
  placement: 'auto',
  flip: true,
  autohide: true,
  fade: true
};

TooltipWrapper.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children to wrap with the tooltip
   */
  children: PropTypes.node,

  /**
   * The text to display inside the tooltip.
   */
  text: PropTypes.string,

  style: PropTypes.object,

  class_name: PropTypes.string,

  className: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * How to place the tooltip.
   */
  placement: PropTypes.oneOf([
    'auto',
    'auto-start',
    'auto-end',
    'top',
    'top-start',
    'top-end',
    'right',
    'right-start',
    'right-end',
    'bottom',
    'bottom-start',
    'bottom-end',
    'left',
    'left-start',
    'left-end'
  ]),

  /**
   * Whether to flip the direction of the popover if too close to the container
   * edge, default True.
   */
  flip: PropTypes.bool,

  /**
   * Control the delay of hide and show events.
   */
  delay: PropTypes.shape({show: PropTypes.number, hide: PropTypes.number}),

  /**
   * Space separated list of triggers (e.g. "click hover focus legacy"). These
   * specify ways in which the target component can toggle the tooltip. If
   * omitted you must toggle the tooltip yourself using callbacks. Options
   * are:
   * - "click": toggles the popover when the target is clicked.
   * - "hover": toggles the popover when the target is hovered over with the
   * cursor.
   * - "focus": toggles the popover when the target receives focus
   * - "legacy": toggles the popover when the target is clicked, but will also
   * dismiss the popover when the user clicks outside of the popover.
   *
   * Default is "hover focus"
   */
  trigger: PropTypes.string
};

export default TooltipWrapper;
