import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';

import {getLoadingState} from '../../private/util';

/**
 * Render a single radio button.
 */
function RadioButton({
  className,
  class_name,
  style,
  id,
  input_class_name,
  inputClassName,
  input_style,
  label,
  label_id,
  label_style,
  label_class_name,
  labelClassName,
  name,
  setProps,
  disabled = false,
  value = false
}) {
  return (
    <div
      className={classNames('form-check', class_name || className)}
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
        type="radio"
        onClick={() => {
          if (!disabled) {
            if (setProps) {
              setProps({value: !value});
            }
          }
        }}
        onChange={() => {}}
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

RadioButton.propTypes = {
  /**
   * The ID of the RadioButton.
   */
  id: PropTypes.string,

  /**
   * The value of the input.
   **/
  value: PropTypes.bool,

  /**
   * Disable the RadioButton.
   **/
  disabled: PropTypes.bool,

  /**
   * CSS classes to apply to the container (div)
   */
  class_name: PropTypes.string,

  /**
   * Inline CSS styles to apply to the container (div)
   */
  style: PropTypes.object,

  /**
   * Inline CSS styles to apply to the <input> element.
   */
  input_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the <input> element.
   */
  input_class_name: PropTypes.string,

  /**
   * The label of the <input> element
   */
  label: PropTypes.node,

  /**
   * The id of the label
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

RadioButton.dashPersistence = {
  persisted_props: ['value'],
  persistence_type: 'local'
};

export default RadioButton;
