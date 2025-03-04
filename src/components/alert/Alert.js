import React, {useEffect, useRef} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBAlert from 'react-bootstrap/Alert';

import {bootstrapColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

/**
 * Alert allows you to create contextual feedback messages on user actions.
 *
 * Control the visibility using callbacks with the `is_open` prop, or set it to
 * auto-dismiss with the `duration` prop.
 */
function Alert({
  children,
  is_open = true,
  color = 'success',
  dismissable,
  duration = null,
  fade,
  style,
  class_name,
  className,
  setProps,
  ...otherProps
}) {
  const timeout = useRef(null);

  const dismiss = () => {
    if (setProps) {
      setProps({is_open: false});
    }
  };

  useEffect(() => {
    if (duration) {
      if (is_open) {
        timeout.current = setTimeout(dismiss, duration);
      } else if (timeout.current) {
        clearTimeout(timeout.current);
        timeout.current = null;
      }
    }
    return () => clearTimeout(timeout.current);
  }, [is_open, duration]);

  const isBootstrapColor = bootstrapColors.has(color);
  return (
    <RBAlert
      show={is_open}
      dismissible={dismissable}
      onClose={dismissable ? dismiss : null}
      variant={isBootstrapColor ? color : null}
      className={class_name || className}
      transition={fade}
      style={!isBootstrapColor ? {backgroundColor: color, ...style} : style}
      {...omit(
        ['persistence', 'persisted_props', 'persistence_type'],
        otherProps
      )}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBAlert>
  );
}

Alert.dashPersistence = {
  persisted_props: ['is_open'],
  persistence_type: 'local'
};

Alert.propTypes = {
  /**
   * The children of the Alert.
   */
  children: PropTypes.node,

  /**
   * The ID of the Alert.
   */
  id: PropTypes.string,

  /**
   * Whether the Alert is open (i.e. visible to the user). Default: True.
   */
  is_open: PropTypes.bool,

  /**
   * Alert color, options: primary, secondary, success, info, warning, danger,
   * link or any valid CSS color of your choice (e.g. a hex code, a decimal code or a CSS color name)
   *
   * Default: success.
   */
  color: PropTypes.string,

  /**
   * If True, add a close button that allows Alert to be dismissed.
   */
  dismissable: PropTypes.bool,

  /**
   * Duration in milliseconds after which the Alert dismisses itself.
   */
  duration: PropTypes.number,

  /**
   * If True, a fade animation will be applied when `is_open` is toggled. If False the
   * Alert will simply appear and disappear.
   */
  fade: PropTypes.bool,

  /**
   * Additional inline styles to apply to the Alert.
   */
  style: PropTypes.object,

  /**
   * Additional CSS class to apply to the Alert.
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
   * Properties to persist. Since only `is_open` is supported, this prop can normally be
   * ignored.
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
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS class to apply to the Alert.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Alert;
