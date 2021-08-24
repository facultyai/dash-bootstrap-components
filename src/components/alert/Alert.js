import React, {useEffect, useRef} from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBAlert from 'react-bootstrap/Alert';
import {bootstrapColors} from '../../private/BootstrapColors';

/**
 * Alert allows you to create contextual feedback messages on user actions.
 *
 * Control the visibility using callbacks with the `is_open` prop, or set it to
 * auto-dismiss with the `duration` prop.
 */
const Alert = props => {
  const {
    children,
    dismissable,
    duration,
    is_open,
    loading_state,
    setProps,
    color,
    style,
    class_name,
    className,
    fade,
    ...otherProps
  } = props;

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
  }, [is_open]);

  const dismiss = () => {
    if (setProps) {
      setProps({is_open: false});
    }
  };

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
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      {children}
    </RBAlert>
  );
};

Alert.defaultProps = {
  color: 'success',
  is_open: true,
  duration: null
};

Alert.propTypes = {
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
   * Alert color, options: primary, secondary, success, info, warning, danger,
   * link or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name)
   * Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Whether alert is open. Default: True.
   */
  is_open: PropTypes.bool,

  /**
   * If True, a fade animation will be applied when `is_open` is toggled. If
   * False the Alert will simply appear and disappear.
   */
  fade: PropTypes.bool,

  /**
   * If true, add a close button that allows Alert to be dismissed.
   */
  dismissable: PropTypes.bool,

  /**
   * Duration in milliseconds after which the Alert dismisses itself.
   */
  duration: PropTypes.number,

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

export default Alert;
