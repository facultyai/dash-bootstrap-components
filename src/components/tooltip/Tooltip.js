import React from 'react';

import PropTypes from 'prop-types';

import Overlay from '../../private/Overlay';
import {TooltipTemplate} from '../../private/OverlayTemplates';
import {getLoadingState} from '../../private/util';

/**
 * A component for adding tooltips to any element, no callbacks required!
 *
 * Simply add the Tooltip to you layout, and give it a target (id of a
 * component to which the tooltip should be attached)
 */

function Tooltip({
  children,
  id,
  is_open,
  trigger = 'hover focus',
  style,
  class_name,
  delay = {show: 0, hide: 50},
  placement = 'auto',
  flip = true,
  autohide = true,
  fade = true,
  className,
  ...otherProps
}) {
  return (
    <Overlay
      data-dash-is-loading={getLoadingState() || undefined}
      defaultShow={is_open}
      delay={delay}
      placement={placement}
      flip={flip}
      autohide={autohide}
      trigger={trigger}
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
}

Tooltip.propTypes = {
  /**
   * The children of this Tooltip.
   */
  children: PropTypes.node,

  /**
   * The ID of the Tooltip.
   */
  id: PropTypes.string,

  /**
   * The id of the element to attach the tooltip to
   */
  target: PropTypes.oneOfType([PropTypes.string, PropTypes.object]),

  /**
   * Whether the Tooltip is open or not.
   */
  is_open: PropTypes.bool,

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
   * Control the delay of hide and show events.
   */
  delay: PropTypes.shape({show: PropTypes.number, hide: PropTypes.number}),

  /**
   * Whether to flip the direction of the popover if too close to the container
   * edge, default True.
   */
  flip: PropTypes.bool,

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
   * Additional inline CSS styles to apply to the Tooltip.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Tooltip
   */
  class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the Tooltip
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Tooltip;
