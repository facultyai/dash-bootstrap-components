import React, {cloneElement, useContext} from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {map} from 'react-bootstrap/ElementChildren';

import {bootstrapColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

export const ProgressContext = React.createContext({});

/*
 * Bulk of this file is vendored from react-bootstrap/src/ProgressBar, but we
 * add the ability to style the bar which is needed for setting colors more
 * freely.
 */
const ROUND_PRECISION = 1000;

function getPercentage(now, min, max) {
  const percentage = ((now - min) / (max - min)) * 100;
  return Math.round(percentage * ROUND_PRECISION) / ROUND_PRECISION;
}

function renderProgressBar(
  {
    min,
    now,
    max,
    label,
    style,
    variant,
    barStyle,
    animated = false,
    visuallyHidden = false,
    striped = false,
    className,
    ...props
  },
  ref
) {
  return (
    <div
      ref={ref}
      {...props}
      role="progressbar"
      className={classNames(className, `progress-bar`, {
        [`bg-${variant}`]: variant,
        [`progress-bar-animated`]: animated,
        [`progress-bar-striped`]: animated || striped
      })}
      style={{width: `${getPercentage(now, min, max)}%`, ...style, ...barStyle}}
      aria-valuenow={now}
      aria-valuemin={min}
      aria-valuemax={max}
    >
      {visuallyHidden ? (
        <span className="visually-hidden">{label}</span>
      ) : (
        label
      )}
    </div>
  );
}

const ProgressBar = React.forwardRef(function ProgressBar(
  {isChild = false, min, max, ...props},
  ref
) {
  if (isChild) {
    const context = useContext(ProgressContext);
    return renderProgressBar(
      {...props, max: max || context.max, min: min || context.min},
      ref
    );
  }

  const {
    now,
    label,
    visuallyHidden,
    striped,
    animated,
    variant,
    className,
    children,
    barStyle,
    ...wrapperProps
  } = props;

  min = min === undefined ? 0 : min;
  max = max === undefined ? 100 : max;

  return (
    <div
      ref={ref}
      {...wrapperProps}
      className={classNames(className, 'progress')}
    >
      <ProgressContext.Provider value={{min, max}}>
        {children
          ? map(children, child => cloneElement(child, {isChild: true}))
          : renderProgressBar(
              {
                min,
                now,
                max,
                label,
                visuallyHidden,
                striped,
                animated,
                variant,
                barStyle
              },
              ref
            )}
      </ProgressContext.Provider>
    </div>
  );
});

/**
 * Component for displaying progress bars, with support for stacked bars, animated
 * backgrounds, and text labels.
 */
function Progress({
  children,
  value,
  color,
  bar,
  hide_label = false,
  class_name,
  className,
  ...otherProps
}) {
  const isBootstrapColor = bootstrapColors.has(color);
  return (
    <ProgressBar
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
      now={value}
      isChild={bar}
      variant={isBootstrapColor ? color : null}
      visuallyHidden={hide_label}
      barStyle={isBootstrapColor ? {} : {backgroundColor: color}}
    >
      {children}
    </ProgressBar>
  );
}

ProgressBar.propTypes = {
  children: PropTypes.node,
  style: PropTypes.object,
  class_name: PropTypes.string,
  className: PropTypes.string,
  min: PropTypes.number,
  max: PropTypes.number,
  now: PropTypes.number,
  label: PropTypes.string,
  visuallyHidden: PropTypes.bool,
  animated: PropTypes.bool,
  striped: PropTypes.bool,
  variant: PropTypes.string,
  isChild: PropTypes.bool,
  barStyle: PropTypes.object
};

Progress.propTypes = {
  /**
   * The children of this Progress. Use this to nest progress bars.
   */
  children: PropTypes.node,

  /**
   * The ID of the Progress.
   */
  id: PropTypes.string,

  /**
   * Specify progress, value from min to max inclusive.
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Adds a label to the progress bar.
   */
  label: PropTypes.string,

  /**
   * Lower limit for value, default: 0
   */
  min: PropTypes.number,

  /**
   * Upper limit for value, default: 100
   */
  max: PropTypes.number,

  /**
   * Set color of the progress bar, options: primary, secondary, success,
   * warning, danger, info or any valid CSS color
   * of your choice (e.g. a hex code, a decimal code or a CSS color name).
   */
  color: PropTypes.string,

  /**
   * Set to True when nesting Progress inside another Progress component to
   * create a multi-progress bar.
   */
  bar: PropTypes.bool,

  /**
   * Set to True to hide the label.
   */
  hide_label: PropTypes.bool,

  /**
   * Animate the bar, must have striped set to True to work.
   */
  animated: PropTypes.bool,

  /**
   * Use striped progress bar
   */
  striped: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Progress.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Progress.
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
   * Additional CSS classes to apply to the Progress.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Progress;
