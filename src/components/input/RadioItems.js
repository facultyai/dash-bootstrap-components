import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

import {sanitizeOptions} from '../../private/util';

/**
 * RadioItems is a component that encapsulates several radio item inputs.
 * The values and labels of the RadioItems is specified in the `options`
 * property and the seleced item is specified with the `value` property.
 * Each radio item is rendered as an input and associated label which are
 * siblings of each other.
 */
const RadioItems = props => {
  const {
    id,
    className,
    class_name,
    style,
    options,
    key,
    loading_state,
    name
  } = props;

  const listItem = option => {
    const {
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
      switch: switches
    } = props;

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
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      {items}
    </div>
  );
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
   *   {"label": "label2", "value": "value2"}, ...
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
     *   {label: `label2`, value: `value2`}, ...
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
   * The ID of this component, used to identify dash components in callbacks.
   * The ID needs to be unique across all of the components in an app.
   */
  id: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * The style of the container (div)
   */
  style: PropTypes.object,

  /**
   * The class of the container (div)
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * The class of the container (div)
   */
  className: PropTypes.string,

  /**
   * The style of the <input> radio element
   */
  input_style: PropTypes.object,

  /**
   * **DEPRECATED** Use `input_style` instead.
   *
   * The style of the <input> radio element
   */
  inputStyle: PropTypes.object,

  /**
   * Additional inline style arguments to apply to <input> elements on checked
   * items.
   */
  input_checked_style: PropTypes.object,

  /**
   * **DEPRECATED** Use `input_checked_style` instead.
   *
   * Additional inline style arguments to apply to <input> elements on checked
   * items.
   */
  inputCheckedStyle: PropTypes.object,

  /**
   * The class of the <input> radio element
   */
  input_class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `input_class_name` instead.
   *
   * The class of the <input> radio element
   */
  inputClassName: PropTypes.string,

  /**
   * Additional CSS classes to apply to the <input> element when the
   * corresponding radio is checked.
   */
  input_checked_class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `input_checked_class_name` instead.
   *
   * Additional CSS classes to apply to the <input> element when the
   * corresponding radio is checked.
   */
  inputCheckedClassName: PropTypes.string,

  /**
   * Inline style arguments to apply to the <label> element for each item.
   */
  label_style: PropTypes.object,

  /**
   * **DEPRECATED** Use `label_style` instead.
   *
   * Inline style arguments to apply to the <label> element for each item.
   */
  labelStyle: PropTypes.object,

  /**
   * Additional inline style arguments to apply to <label> elements on checked
   * items.
   */
  label_checked_style: PropTypes.object,

  /**
   * **DEPRECATED** Use `label_checked_style` instead.
   *
   * Additional inline style arguments to apply to <label> elements on checked
   * items.
   */
  labelCheckedStyle: PropTypes.object,

  /**
   * CSS classes to apply to the <label> element for each item.
   */
  label_class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `label_class_name` instead.
   *
   * CSS classes to apply to the <label> element for each item.
   */
  labelClassName: PropTypes.string,

  /**
   * Additional CSS classes to apply to the <label> element when the
   * corresponding radio is checked.
   */
  label_checked_class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `label_checked_class_name` instead.
   *
   * Additional CSS classes to apply to the <label> element when the
   * corresponding radio is checked.
   */
  labelCheckedClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func,

  /**
   * Arrange RadioItems inline
   */
  inline: PropTypes.bool,

  /**
   * Set to True to render toggle-like switches instead of radios.
   */
  switch: PropTypes.bool,

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
   * Used to allow user interactions in this component to be persisted when
   * the component - or the page - is refreshed. If `persisted` is truthy and
   * hasn't changed from its previous value, a `value` that the user has
   * changed while using the app will keep that change, as long as
   * the new `value` also matches what was given originally.
   * Used in conjunction with `persistence_type`.
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
   * memory: only kept in memory, reset on page refresh.
   * local: window.localStorage, data is kept after the browser quit.
   * session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

  /**
   * The name of the control, which is submitted with the form data.
   */
  name: PropTypes.string
};

RadioItems.defaultProps = {
  inputStyle: {},
  input_style: null,
  inputClassName: '',
  input_class_name: '',
  labelStyle: {},
  label_style: null,
  labelClassName: '',
  label_class_name: '',
  options: [],
  persisted_props: ['value'],
  persistence_type: 'local'
};

export default RadioItems;
