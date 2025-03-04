import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';

import {getLoadingState} from '../../private/util';

/**
 * Render a single toggle-like switch.
 */
function Switch({
  value = false,
  id,
  label,
  disabled = false,
  style,
  class_name,
  input_class_name,
  input_style,
  label_id,
  label_style,
  label_class_name,
  name,
  className,
  inputClassName,
  labelClassName,
  setProps
}) {
  return (
    <div
      className={classNames('form-check form-switch', class_name || className)}
      style={style}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      <input
        id={id}
        name={name}
        checked={value}
        className={classNames(
          'form-check-input',
          input_class_name || inputClassName
        )}
        disabled={disabled}
        style={input_style}
        type="checkbox"
        onChange={() => {
          if (!disabled) {
            if (setProps) {
              setProps({value: !value});
            }
          }
        }}
      />
      <label
        id={label_id}
        style={label_style}
        className={classNames(
          label_class_name || labelClassName,
          'form-check-label',
          'form-label'
        )}
        htmlFor={id}
      >
        {label}
      </label>
    </div>
  );
}

Switch.dashPersistence = {
  persisted_props: ['value'],
  persistence_type: 'local'
};

Switch.propTypes = {
  /**
   * The ID of the Switch.
   */
  id: PropTypes.string,

  /**
   * The value of the switch.
   **/
  value: PropTypes.bool,

  /**
   * Disable the Switch.
   **/
  disabled: PropTypes.bool,

  /**
   * The label of the <input> element
   */
  label: PropTypes.node,

  /**
   * Additional CSS classes to apply to the container div.
   */
  class_name: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the container div.
   */
  style: PropTypes.object,

  /**
   * Additional inline CSS styles to apply to the <input> element.
   */
  input_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the <input> element.
   */
  input_class_name: PropTypes.string,

  /**
   * The ID of the label
   */
  label_id: PropTypes.string,

  /**
   * Additional inline CSS styles to add to the label.
   */
  label_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the label.
   */
  label_class_name: PropTypes.string,

  /**
   * The name of the control, which is submitted with the form data.
   */
  name: PropTypes.string,

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
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['value'])),

  /**
   * Where persisted user changes will be stored:
   * - memory: only kept in memory, reset on page refresh.
   * - local: window.localStorage, data is kept after the browser quit.
   * - session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the container div.
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** Use `input_style` instead.
   *
   * Additional inline CSS styles to apply to the <input> element.
   */
  inputStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `input_class_name` instead.
   *
   * Additional CSS classes to apply to the <input> element.
   */
  inputClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `label_style` instead.
   *
   * Additional inline CSS styles to add to the label.
   */
  labelStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `label_class_name` instead.
   *
   * Additional CSS classes to apply to the label.
   */
  labelClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Switch;
