import React, {useEffect, useRef, useState} from 'react';
import PropTypes from 'prop-types';
import RBPlaceholder from 'react-bootstrap/Placeholder';
import {omit} from 'ramda';

import classNames from 'classnames';

/**
 * Use loading Placeholders for your components or pages to indicate
 * something may still be loading.
 */
const Placeholder = props => {
  const {
    children,
    loading_state,
    className,
    class_name,
    color,
    button,
    style,
    delay_hide,
    delay_show,
    show_initially,
    animation,
    ...otherProps
  } = props;

  const [showPlaceholder, setShowPlaceholder] = useState(show_initially);
  const dismissTimer = useRef();
  const showTimer = useRef();

  useEffect(() => {
    if (loading_state) {
      if (loading_state.is_loading) {
        // if component is currently loading and there's a dismiss timer active
        // we need to clear it.
        if (dismissTimer.current) {
          dismissTimer.current = clearTimeout(dismissTimer.current);
        }
        // if component is currently loading but the placeholder is not showing and
        // there is no timer set to show, then set a timeout to show
        if (!showPlaceholder && !showTimer.current) {
          showTimer.current = setTimeout(() => {
            setShowPlaceholder(true);
            showTimer.current = null;
          }, delay_show);
        }
      } else {
        // if component is not currently loading and there's a show timer
        // active we need to clear it
        if (showTimer.current) {
          showTimer.current = clearTimeout(showTimer.current);
        }
        // if component is not currently loading and the placeholder is showing and
        // there's no timer set to dismiss it, then set a timeout to hide it
        if (showPlaceholder && !dismissTimer.current) {
          dismissTimer.current = setTimeout(() => {
            setShowPlaceholder(false);
            dismissTimer.current = null;
          }, delay_hide);
        }
      }
    }
  }, [delay_hide, delay_show, loading_state]);

  // If the placeholder is to be animated, need to add the placeholder class
  // (as this isn't added for some reason)
  const classes = classNames(
    class_name || className,
    animation && `placeholder`
  );

  // Create the placeholder
  const PlaceholderDiv = ({finalStyle}) => {
    if (button) {
      return (
        <RBPlaceholder.Button
          variant={color}
          className={classes}
          style={finalStyle}
          animation={animation}
          {...omit(['setProps'], otherProps)}
        />
      );
    }
    // Not a button style (default)
    return (
      <RBPlaceholder
        bg={color}
        className={classes}
        style={finalStyle}
        animation={animation}
        {...omit(['setProps'], otherProps)}
      />
    );
  };

  // Identify if the Placeholder needs an animation - if so it must be placed
  // inside another Placeholder

  // Defaulted styles above to the situation where placeholder has no children
  // now include properties if placeholder has children
  if (children) {
    // include covering style additions
    const coveringStyle = {
      visibility: 'visible',
      position: 'absolute',
      top: 0,
      height: '100%',
      width: '100%',
      display: 'flex',
      justifyContent: 'left',
      alignItems: 'start'
    };

    const hiddenStyle = {
      visibility: 'hidden',
      position: 'relative'
    };

    const placeholderStyle = {
      display: 'block',
      margin: '1rem auto',
      ...style
    };

    return (
      <div style={showPlaceholder ? hiddenStyle : {}}>
        {children}
        {showPlaceholder && (
          <div style={coveringStyle}>
            <PlaceholderDiv finalStyle={placeholderStyle} />
          </div>
        )}
      </div>
    );
  }

  return <PlaceholderDiv finalStyle={style} />;
};

Placeholder._dashprivate_isLoadingComponent = true;

Placeholder.defaultProps = {
  delay_hide: 0,
  delay_show: 0,
  show_initially: true,
  button: false
};

Placeholder.propTypes = {
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
  }),

  /**
   * Changes the animation of the placeholder.
   */
  animation: PropTypes.oneOf(['glow', 'wave']),

  /**
   * Background color, options: primary, secondary, success, info, warning, danger,
   * light, dark.
   */
  color: PropTypes.string,

  /**
   * Component size variations. Only valid when `button=false`.
   */
  size: PropTypes.oneOf(['xs', 'sm', 'lg']),

  /**
   * Show as a button shape
   */
  button: PropTypes.bool,

  /**
   * When using the placeholder as a loading placeholder, add a time delay
   * (in ms) to the placeholder being removed to prevent flickering.
   */
  delay_hide: PropTypes.number,

  /**
   * When using the placeholder as a loading placeholder, add a time delay
   * (in ms) to the placeholder being shown after the loading_state is set to
   * true.
   */
  delay_show: PropTypes.number,

  /**
   * Whether the Placeholder should show on app start-up before the loading
   * state has been determined. Default True.
   */
  show_initially: PropTypes.bool,

  /**
   * Specify placeholder behaviour on an extra small screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive.
   * See the documentation for more details.
   */
  xs: PropTypes.number,

  /**
   * Specify placeholder behaviour on a small screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive.
   * See the documentation for more details.
   */
  sm: PropTypes.number,

  /**
   * Specify placeholder behaviour on a medium screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive.
   * See the documentation for more details.
   */
  md: PropTypes.number,

  /**
   * Specify placeholder behaviour on a large screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive.
   * See the documentation for more details.
   */
  lg: PropTypes.number,

  /**
   * Specify placeholder behaviour on an extra large screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive.
   * See the documentation for more details.
   */
  xl: PropTypes.number,

  /**
   * Specify placeholder behaviour on an extra extra large screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive.
   * See the documentation for more details.
   */
  xxl: PropTypes.number
};

export default Placeholder;
