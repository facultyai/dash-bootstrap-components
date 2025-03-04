import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';

import Overlay from '../../private/Overlay';
import {PopoverTemplate} from '../../private/OverlayTemplates';
import {getLoadingState} from '../../private/util';

/**
 * Popover creates a toggleable overlay that can be used to provide additional
 * information or content to users without having to load a new page or open a new
 * window.
 *
 * Use the `PopoverHeader` and `PopoverBody` components to control the layout of the
 * children.
 */

function Popover({
  children,
  id,
  is_open,
  placement = 'right',
  hide_arrow,
  delay = {show: 0, hide: 50},
  offset,
  flip = true,
  body,
  autohide = false,
  style,
  class_name,
  className,
  ...otherProps
}) {
  // Calcualte the offset to pass to the popperconfig
  const popperConfig = offset
    ? {
        modifiers: [
          {
            name: 'offset',
            options: {
              offset:
                typeof offset === 'string'
                  ? offset.split(',').map(o => parseInt(o))
                  : [0, offset]
            }
          }
        ]
      }
    : {};

  return (
    <Overlay
      data-dash-is-loading={getLoadingState() || undefined}
      defaultShow={is_open}
      popperConfig={popperConfig}
      delay={delay}
      placement={placement}
      flip={flip}
      autohide={autohide}
      {...omit(
        ['persistence', 'persisted_props', 'persistence_type'],
        otherProps
      )}
    >
      <PopoverTemplate
        // to ensure proper backwards compatibility, the toggle function is only
        // passed to the Popover if `trigger` is not specified
        style={style}
        id={id}
        className={class_name || className}
        hideArrow={hide_arrow}
        body={body}
      >
        {children}
      </PopoverTemplate>
    </Overlay>
  );
}

Popover.dashPersistence = {
  persisted_props: ['is_open'],
  persistence_type: 'local'
};

Popover.propTypes = {
  /**
   * The children of this Popover
   */
  children: PropTypes.node,

  /**
   * The ID of the Popover
   */
  id: PropTypes.string,

  /**
   * ID of the component to attach the Popover to.
   */
  target: PropTypes.oneOfType([PropTypes.string, PropTypes.object]),

  /**
   * Whether the Popover is open or not.
   */
  is_open: PropTypes.bool,

  /**
   * Space separated list of triggers (e.g. "click hover focus legacy"). These
   * specify ways in which the target Popover can toggle the Popover. If not
   * specified you must toggle the Popover yourself using callbacks. Options
   * are:
   * - "click": toggles the Popover when the target is clicked.
   * - "hover": toggles the Popover when the target is hovered over with the
   * cursor.
   * - "focus": toggles the Popover when the target receives focus
   * - "legacy": toggles the Popover when the target is clicked, but will also
   * dismiss the Popover when the user clicks outside of the Popover.
   */
  trigger: PropTypes.string,

  /**
   * Specify Popover placement.
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
   * Hide Popover arrow.
   */
  hide_arrow: PropTypes.bool,

  /**
   * Optionally override show/hide delays
   */
  delay: PropTypes.oneOfType([
    PropTypes.shape({show: PropTypes.number, hide: PropTypes.number}),
    PropTypes.number
  ]),

  /**
   * Offset of the Popover relative to its target. The offset can be passed as a comma
   * separated pair of values e.g. "0,8", where the first number, skidding, displaces
   * the Popover along the reference element. The second number, distance, displaces the
   * Popover away from, or toward, the reference element in the direction of its
   * placement. A positive number displaces it further away, while a negative number
   * lets it overlap the reference. See https://popper.js.org/docs/v2/modifiers/offset/
   * for more info.
   *
   * Alternatively, you can provide just a single 'distance' number e.g. 8 to displace
   * it horizontally.
   */
  offset: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Whether to flip the direction of the Popover if too close to the container
   * edge, default True.
   */
  flip: PropTypes.bool,

  /**
   * When body is `True`, the Popover will render all children in a `PopoverBody`
   * automatically.
   */
  body: PropTypes.bool,

  /**
   * Optionally hide Popover when hovering over content - default False.
   */
  autohide: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Popover.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Popover.
   */
  class_name: PropTypes.string,

  /**
   * Used to allow user interactions to be persisted when the page is refreshed.
   * See https://dash.plotly.com/persistence for more details
   */
  persistence: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.string,
    PropTypes.number
  ]),

  /**
   * Properties whose user interactions will persist after refreshing the
   * Popover or the page. Since only `value` is allowed this prop can
   * normally be ignored.
   */
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['is_open'])),

  /**
   * Where persisted user changes will be stored:
   * - memory: only kept in memory, reset on page refresh.
   * - local: window.localStorage, data is kept after the browser quit.
   * - session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

  /**
   * A unique identifier for the Popover, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Popover
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Popover;
