import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';

import {sanitizeOptions} from '../../private/util';
import {getLoadingState} from '../../private/util';

/**
 * RadioItems is a component that encapsulates several radio item inputs.
 * The values and labels of the RadioItems is specified in the `options`
 * property and the seleced item is specified with the `value` property.
 * Each radio item is rendered as an input and associated label which are
 * siblings of each other.
 */
function RadioItems({
  className,
  class_name,
  style,
  key,
  name,
  id,
  inputClassName,
  input_class_name,
  inputCheckedStyle,
  input_checked_style,
  inputStyle,
  input_style,
  inputCheckedClassName,
  input_checked_class_name,
  labelClassName,
  label_class_name,
  labelCheckedClassName,
  label_checked_class_name,
  labelStyle,
  label_style,
  labelCheckedStyle,
  label_checked_style,
  setProps,
  inline,
  value,
  switch: switches,
  options = []
}) {
  const listItem = option => {
    const checked = option.value === value;

    const mergedLabelStyle = checked
      ? {
          ...(label_style || labelStyle),
          ...(label_checked_style || labelCheckedStyle)
        }
      : label_style || labelStyle;

    const inputId =
      option.input_id || `_dbcprivate_radioitems_${id}_input_${option.value}`;

    return (
      <div
        className={classNames(
          'form-check',
          inline && 'form-check-inline',
          switches && 'form-switch'
        )}
        key={option.value}
      >
        <input
          id={inputId}
          name={name}
          value={option.value}
          checked={checked}
          className={classNames(
            'form-check-input',
            input_class_name || inputClassName,
            checked && (input_checked_class_name || inputCheckedClassName)
          )}
          disabled={Boolean(option.disabled)}
          style={
            checked
              ? input_checked_style || inputCheckedStyle
              : input_style || inputStyle
          }
          type="radio"
          onChange={() => {
            setProps({value: option.value});
          }}
        />
        <label
          id={option.label_id}
          style={mergedLabelStyle}
          className={classNames(
            'form-check-label',
            label_class_name || labelClassName,
            checked && (label_checked_class_name || labelCheckedClassName)
          )}
          key={option.value}
          htmlFor={inputId}
        >
          {option.label}
        </label>
      </div>
    );
  };

  const items = sanitizeOptions(options).map(option => listItem(option));

  return (
    <div
      id={id}
      className={class_name || className}
      style={style}
      key={key}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {items}
    </div>
  );
}

RadioItems.dashPersistence = {
  persisted_props: ['value'],
  persistence_type: 'local'
};

RadioItems.propTypes = {
  /**
   * The options to display as items in the component. This can be an array
   * or a dictionary as follows:
   *
   * \n1. Array of options where the label and the value are the same thing -
   * [string|number]
   *
   * \n2. An array of options
   * ```
   * {
   *   "label": [string|number],
   *   "value": [string|number],
   *   "disabled": [bool] (Optional),
   *   "input_id": [string] (Optional),
   *   "label_id": [string] (Optional)
   * }
   * ```
   *
   * \n3. Simpler `options` representation in dictionary format. The order is not
   * guaranteed. All values and labels will be treated as strings.
   * ```
   * {"value1": "label1", "value2": "label2", ... }
   * ```
   * which is equal to
   * ```
   * [
   *   {"label": "label1", "value": "value1"},
   *   {"label": "label2", "value": "value2"},
   * ]
   * ```
   */
  options: PropTypes.oneOfType([
    /**
     * Array of options where the label and the value are the same thing -
     * [string|number]
     */
    PropTypes.arrayOf(
      PropTypes.oneOfType([PropTypes.string, PropTypes.number])
    ),
    /**
     * Simpler `options` representation in dictionary format. The order is not
     * guaranteed. All values and labels will be treated as strings.
     * {`value1`: `label1`, `value2`: `label2`, ... }
     * which is equal to
     * [
     *   {label: `label1`, value: `value1`},
     *   {label: `label2`, value: `value2`},
     * ]
     */
    PropTypes.object,
    /**
     * An array of options {label: [string|number], value: [string|number]},
     * an optional disabled field can be used for each option
     */
    PropTypes.arrayOf(
      PropTypes.exact({
        /**
         * The radio item's label
         */
        label: PropTypes.node.isRequired,

        /**
         * The value of the radio item. This value corresponds to the items
         * specified in the `value` property.
         */
        value: PropTypes.oneOfType([PropTypes.string, PropTypes.number])
          .isRequired,

        /**
         * If true, this radio item is disabled and can't be clicked on.
         */
        disabled: PropTypes.bool,

        /**
         * id for this option's input, can be used to attach tooltips or apply
         * CSS styles
         */
        input_id: PropTypes.string,

        /**
         * id for this option's label, can be used to attach tooltips or apply
         * CSS styles
         */
        label_id: PropTypes.string
      })
    )
  ]),

  /**
   * The currently selected value
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * The ID of the RadioItems
   */
  id: PropTypes.string,

  /**
   * Arrange RadioItems inline
   */
  inline: PropTypes.bool,

  /**
   * Set to True to render toggle-like switches instead of radios.
   */
  switch: PropTypes.bool,

  /**
   * The style of the container (div)
   */
  style: PropTypes.object,

  /**
   * The class of the container (div)
   */
  class_name: PropTypes.string,

  /**
   * The style of the <input> radio element
   */
  input_style: PropTypes.object,

  /**
   * Additional inline style arguments to apply to <input> elements on checked
   * items.
   */
  input_checked_style: PropTypes.object,

  /**
   * The class of the <input> radio element
   */
  input_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the <input> element when the corresponding radio
   * is checked.
   */
  input_checked_class_name: PropTypes.string,

  /**
   * Inline style arguments to apply to the <label> element for each item.
   */
  label_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the <label> element for each item.
   */
  label_class_name: PropTypes.string,

  /**
   * Additional inline style arguments to apply to <label> elements on the selected
   * item.
   */
  label_checked_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the <label> element when the corresponding
   * radio is selected.
   */
  label_checked_class_name: PropTypes.string,

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
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,
  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * The class of the container (div)
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** Use `input_class_name` instead.
   *
   * The class of the <input> element
   */
  inputClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `input_style` instead.
   *
   * The style of the <input> element.
   */
  inputStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `input_checked_style` instead.
   *
   * Additional inline style arguments to apply to <input> elements on the selected
   * item.
   */
  inputCheckedStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `input_checked_class_name` instead.
   *
   * Additional CSS classes to apply to the <input> element when the corresponding
   * radio button is selected.
   */
  inputCheckedClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `label_style` instead.
   *
   * Inline style arguments to apply to the <label> element for each item.
   */
  labelStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `label_class_name` instead.
   *
   * CSS classes to apply to the <label> element for each item.
   */
  labelClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `label_checked_style` instead.
   *
   * Additional inline style arguments to apply to <label> elements on the selected
   * item.
   */
  labelCheckedStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `label_checked_class_name` instead.
   *
   * Additional CSS classes to apply to the <label> element when the corresponding
   * radio button is selected.
   */
  labelCheckedClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default RadioItems;
