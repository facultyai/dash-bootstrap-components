import React, {useEffect, useRef, useState} from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBSpinner from 'react-bootstrap/Spinner';
import {bootstrapColors} from '../../private/BootstrapColors';

/**
 * Render Bootstrap style loading spinners using only CSS.
 *
 * This component can be used standalone to render a loading spinner, or it can
 * be used like `dash_core_components.Loading` by giving it children. In the
 * latter case the chosen spinner will display while the children are loading.
 */
const Spinner = props => {
  const {
    children,
    color,
    loading_state,
    spinner_style,
    spinnerClassName,
    spinner_class_name,
    fullscreen,
    fullscreenClassName,
    fullscreen_class_name,
    fullscreen_style,
    delay_hide,
    delay_show,
    show_initially,
    type,
    ...otherProps
  } = props;

  const [showSpinner, setShowSpinner] = useState(show_initially);
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
        // if component is currently loading but the spinner is not showing and
        // there is no timer set to show, then set a timeout to show
        if (!showSpinner && !showTimer.current) {
          showTimer.current = setTimeout(() => {
            setShowSpinner(true);
            showTimer.current = null;
          }, delay_show);
        }
      } else {
        // if component is not currently loading and there's a show timer
        // active we need to clear it
        if (showTimer.current) {
          showTimer.current = clearTimeout(showTimer.current);
        }
        // if component is not currently loading and the spinner is showing and
        // there's no timer set to dismiss it, then set a timeout to hide it
        if (showSpinner && !dismissTimer.current) {
          dismissTimer.current = setTimeout(() => {
            setShowSpinner(false);
            dismissTimer.current = null;
          }, delay_hide);
        }
      }
    }
  }, [delay_hide, delay_show, loading_state]);

  const isBootstrapColor = bootstrapColors.has(color);

  const fullscreenStyle = {
    position: 'fixed',
    width: '100vw',
    height: '100vh',
    top: 0,
    left: 0,
    backgroundColor: 'white',
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    zIndex: 99,
    visibility: 'visible',
    ...fullscreen_style
  };

  const SpinnerDiv = ({style}) => (
    <RBSpinner
      variant={isBootstrapColor ? color : null}
      animation={type}
      style={{color: !isBootstrapColor && color, ...style}}
      className={spinner_class_name || spinnerClassName}
      {...omit(['setProps'], otherProps)}
    />
  );
  // Defaulted styles above to the situation where spinner has no children
  // now include properties if spinner has children
  if (children) {
    // include covering style additions
    const coveringStyle = {
      visibility: 'visible',
      position: 'absolute',
      top: 0,
      height: '100%',
      width: '100%',
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center'
    };

    const hiddenStyle = {
      visibility: 'hidden',
      position: 'relative'
    };

    const spinnerStyle = {
      display: 'block',
      margin: '1rem auto',
      ...spinner_style
    };

    return (
      <div style={showSpinner ? hiddenStyle : {}}>
        {children}
        {showSpinner && (
          <div
            style={fullscreen ? fullscreenStyle : coveringStyle}
            className={
              fullscreen && (fullscreen_class_name || fullscreenClassName)
            }
          >
            <SpinnerDiv style={spinnerStyle} />
          </div>
        )}
      </div>
    );
  }

  if (fullscreen) {
    return (
      <div
        className={fullscreen_class_name || fullscreenClassName}
        style={fullscreenStyle}
      >
        <SpinnerDiv style={spinner_style} />
      </div>
    );
  }

  return <SpinnerDiv style={spinner_style} />;
};

Spinner._dashprivate_isLoadingComponent = true;

Spinner.defaultProps = {
  delay_hide: 0,
  delay_show: 0,
  show_initially: true,
  type: 'border'
};

Spinner.propTypes = {
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
   * Defines CSS styles for the container when fullscreen=True.
   */
  fullscreen_style: PropTypes.object,

  /**
   * Inline CSS styles to apply to the spinner.
   */
  spinner_style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  fullscreen_class_name: PropTypes.string,

  /**
   * **DEPRECATED** - use `fullscreen_class_name` instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  fullscreenClassName: PropTypes.string,

  /**
   * CSS class names to apply to the spinner.
   */
  spinner_class_name: PropTypes.string,

  /**
   * **DEPRECATED** - use `spinner_class_name` instead.
   *
   * CSS class names to apply to the spinner.
   */
  spinnerClassName: PropTypes.string,

  /**
   * Sets the color of the Spinner. Main options are Bootstrap contextual
   * colors: primary, secondary, success, info, warning, danger, light, dark,
   * body, muted, white-50, black-50. You can also specify any valid CSS color
   * of your choice (e.g. a hex code, a decimal code or a CSS color name)
   *
   * If not specified will default to text colour.
   */
  color: PropTypes.string,

  /**
   * The type of spinner. Options 'border' and 'grow'. Default 'border'.
   */
  type: PropTypes.string,

  /**
   * The spinner size. Options are 'sm', and 'md'.
   */
  size: PropTypes.string,

  /**
   * Boolean that determines if the loading spinner will be displayed
   * full-screen or not.
   */
  fullscreen: PropTypes.bool,

  /**
   * When using the spinner as a loading spinner, add a time delay (in ms) to
   * the spinner being removed to prevent flickering.
   */
  delay_hide: PropTypes.number,

  /**
   * When using the spinner as a loading spinner, add a time delay (in ms) to
   * the spinner being shown after the loading_state is set to true.
   */
  delay_show: PropTypes.number,

  /**
   * Whether the Spinner should show on app start-up before the loading state
   * has been determined. Default True.
   */
  show_initially: PropTypes.bool
};

export default Spinner;
