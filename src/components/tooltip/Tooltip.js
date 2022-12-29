import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';

import {TooltipTemplate} from '../../private/OverlayTemplates';
import Overlay from '../../private/Overlay';

/**
 * A component for adding tooltips to any element, no callbacks required!
 *
 * Simply add the Tooltip to you layout, and give it a target (id of a
 * component to which the tooltip should be attached)
 */

const Tooltip = props => {
  const {
    id,
    children,
    is_open,
    loading_state,
    className,
    class_name,
    style,
    fade,
    ...otherProps
  } = props;

  return (
    <Overlay
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      defaultShow={is_open}
      {...otherProps}
      transition={fade}
    >
      <TooltipTemplate
        id={id}
        style={style}
        className={class_name || className}
      >
        {children}
      </TooltipTemplate>
    </Overlay>
  );
};

Tooltip.defaultProps = {
  delay: {show: 0, hide: 50},
  placement: 'auto',
  flip: true,
  autohide: true,
  fade: true,
  trigger: 'hover focus'
};

Tooltip.propTypes = {
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
   * The id of the element to attach the tooltip to
   */
  target: PropTypes.oneOfType([PropTypes.string, PropTypes.object]),

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
   * Optionally hide tooltip when hovering over tooltip content - default True.
   */
  autohide: PropTypes.bool,

  /**
   * If True, a fade animation will be applied when `is_open` is toggled. If
   * False the Alert will simply appear and disappear.
   */
  fade: PropTypes.bool,

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
  trigger: PropTypes.string,

  /**
   * Whether the Tooltip is open or not.
   */
  is_open: PropTypes.bool,

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

export default Tooltip;
