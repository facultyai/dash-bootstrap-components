import React, {Fragment} from 'react';
import PropTypes from 'prop-types';
import {omit, type} from 'ramda';
import {Spinner as RSSpinner} from 'reactstrap';

const spinnerColors = new Set([
  'primary',
  'light',
  'dark',
  'secondary',
  'success',
  'warning',
  'danger',
  'info',
  'body',
  'muted',
  'black-50',
  'white-50',
  'white'
]);

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
    fullscreen,
    fullscreenClassName,
    fullscreen_style,
    ...otherProps
  } = props;

  const isSpinnerColor = spinnerColors.has(color);

  // this spacing is consistent with the behaviour of dcc.Loading
  // it can be overridden with spinnerStyle
  const defaultSpinnerStyle = children
    ? {display: 'block', margin: '1rem auto'}
    : {};
  const spinnerStyle = {...defaultSpinnerStyle, ...spinner_style};

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

  const coveringStyle = {
    visibility: 'visible'
  };

  const hiddenStyle = {
    visibility: 'hidden',
    position: 'relative',
    display: 'inline-block'
  };

  // Defaulted styles above to the situation where spinner has no children
  // now include properties if spinner has children
  if (children) {
    // include covering style additions
    coveringStyle.position = 'absolute';
    coveringStyle.top = 0;
    coveringStyle.height = '100%';
    coveringStyle.width = '100%';
    coveringStyle.display = 'flex';
    coveringStyle.justifyContent = 'center';
    coveringStyle.alignItems = 'center';

    // remove hidden style additions
    delete hiddenStyle.display;
  }

  const showSpinner = !children || (loading_state && loading_state.is_loading);

  return (
    <div style={showSpinner ? hiddenStyle : {}}>
      {children}
      {showSpinner && (
        <div
          style={fullscreen ? fullscreenStyle : coveringStyle}
          className={fullscreen && fullscreenClassName}
        >
          <RSSpinner
            color={isSpinnerColor ? color : null}
            style={{color: !isSpinnerColor && color, ...spinnerStyle}}
            className={spinnerClassName}
            {...omit(['setProps'], otherProps)}
          />
        </div>
      )}
    </div>
  );
};

Spinner._dashprivate_isLoadingComponent = true;

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
  fullscreenClassName: PropTypes.string,

  /**
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
   * The spinner size. Options are 'sm', 'md' and 'lg'.
   */
  size: PropTypes.string,

  /**
   * Boolean that determines if the loading spinner will be displayed
   * full-screen or not.
   */
  fullscreen: PropTypes.bool
};

export default Spinner;
