import React, {useEffect, useRef} from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBToast from 'react-bootstrap/Toast';

import {getLoadingState} from '../../private/util';

/**
 * Toasts can be used to push messages and notifactions to users. Control visibility of
 * the toast with the `is_open` prop, or use `duration` to set a timer for
 * auto-dismissal.
 */
function Toast({
  children,
  is_open = true,
  dismissable = false,
  duration,
  n_dismiss = 0,
  color,
  header,
  icon,
  header_style,
  header_class_name,
  body_style,
  body_class_name,
  class_name,
  className,
  headerClassName,
  bodyClassName,
  setProps,
  ...otherProps
}) {
  const dismiss = () => {
    if (setProps) {
      setProps({is_open: false, n_dismiss: n_dismiss + 1});
    }
  };

  const timeout = useRef(null);

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
  }, [is_open]);

  return (
    <RBToast
      show={is_open}
      onClose={dismissable && dismiss}
      className={class_name || className}
      bg={color}
      data-dash-is-loading={getLoadingState() || undefined}
      {...omit(
        ['persistence', 'persisted_props', 'persistence_type', 'setProps'],
        otherProps
      )}
    >
      <RBToast.Header
        style={header_style}
        className={header_class_name || headerClassName}
        closeButton={dismissable}
      >
        {icon && (
          <svg
            className={`rounded text-${icon}`}
            width="20"
            height="20"
            xmlns="http://www.w3.org/2000/svg"
            preserveAspectRatio="xMidYMid slice"
            focusable="false"
            role="img"
          >
            <rect fill="currentColor" width="100%" height="100%"></rect>
          </svg>
        )}
        <strong className={classNames('me-auto', icon && 'ms-2')}>
          {header}
        </strong>
      </RBToast.Header>
      <RBToast.Body
        style={body_style}
        className={body_class_name || bodyClassName}
      >
        {children}
      </RBToast.Body>
    </RBToast>
  );
}

Toast.dashPersistence = {
  persisted_props: ['is_open'],
  persistence_type: 'local'
};

Toast.propTypes = {
  /**
   * The children of the Toast.
   */
  children: PropTypes.node,

  /**
   * The ID of the Toast.
   */
  id: PropTypes.string,

  /**
   * Whether Toast is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * Set to True to add a dismiss button to the header which will close the
   * toast on click
   */
  dismissable: PropTypes.bool,

  /**
   * Duration in milliseconds after which the Alert dismisses itself.
   */
  duration: PropTypes.number,

  /**
   * An integer that represents the number of times that the dismiss button has
   * been clicked on.
   */
  n_dismiss: PropTypes.number,

  /**
   * Text to populate the header with
   */
  header: PropTypes.node,

  /**
   * Add a contextually coloured icon to the header of the toast. Options are:
   * "primary", "secondary", "success", "warning", "danger", "info", "light" or
   * "dark".
   */
  icon: PropTypes.string,

  /**
   * Toast color, options: primary, secondary, success, info, warning, danger,
   * light, dark. Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Toast.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Toast.
   */
  class_name: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Toast header.
   */
  header_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Toast header.
   */
  header_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the Toast body.
   */
  body_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Toast body.
   */
  body_class_name: PropTypes.string,

  /**
   * HTML tag to use for the Toast, default: div
   */
  tag: PropTypes.string,

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
   * component or the page. Since only `value` is allowed this prop can
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
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Toast.
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** - use `header_class_name` instead
   *
   * Additional CSS classes to apply to the Toast. The classes
   * specified with this prop will be applied to the header of the toast.
   */
  headerClassName: PropTypes.string,

  /**
   * **DEPRECATED** - use `body_class_name` instead.
   *
   * Additional CSS classes to apply to the Toast. The classes
   * specified with this prop will be applied to the body of the toast.
   */
  bodyClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the input changes.
   **/
  setProps: PropTypes.func
};

export default Toast;
