import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormSelect from 'react-bootstrap/FormSelect';

import {sanitizeOptions} from '../../private/util';

/**
 * Create a HTML select element with Bootstrap styles. Specify options as a list of
 * dictionaries with keys label, value and disabled.
 */
function Select({
  options = [],
  value = '',
  valid,
  invalid,
  class_name,
  html_size,
  placeholder = '',
  className,
  setProps,
  ...otherProps
}) {
  const handleChange = e => {
    if (setProps) {
      setProps({value: e.target.value});
    }
  };

  return (
    <RBFormSelect
      {...omit(
        ['persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
      isInvalid={invalid}
      isValid={valid}
      onChange={handleChange}
      className={class_name || className}
      htmlSize={html_size}
      value={value || ''}
    >
      <option value="" disabled hidden>
        {placeholder}
      </option>
      {options &&
        sanitizeOptions(options).map(option => (
          <option
            key={option.value}
            value={option.value}
            disabled={option.disabled}
            title={option.title}
          >
            {option.label}
          </option>
        ))}
    </RBFormSelect>
  );
}

Select.dashPersistence = {
  persisted_props: ['value'],
  persistence_type: 'local'
};

Select.propTypes = {
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
   *   "title": [string] (Optional)
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
         * The options's label
         */
        label: PropTypes.oneOfType([PropTypes.string, PropTypes.number])
          .isRequired,

        /**
         * The value of the option. This value corresponds to the items
         * specified in the `value` property.
         */
        value: PropTypes.string.isRequired,

        /**
         * If true, this checkbox is disabled and can't be clicked on.
         */
        disabled: PropTypes.bool,

        /**
         * The HTML 'title' attribute for the option. Allows for information on
         * hover. For more information on this attribute, see
         * https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/title
         */
        title: PropTypes.string
      })
    )
  ]),

  /**
   * The value of the currently selected option.
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * The ID of the Select
   */
  id: PropTypes.string,

  /**
   * Placeholder text to display before a selection is made.
   */
  placeholder: PropTypes.string,

  /**
   * Set to True to disable the Select.
   */
  disabled: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Select.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Select.
   */
  class_name: PropTypes.string,

  /**
   * This attribute specifies that the user must fill in a value before submitting a
   * form. It cannot be used when the type attribute is hidden, image, or a button type
   * (submit, reset, or button). The :optional and :required CSS pseudo-classes will be
   * applied to the field as appropriate. required is an HTML boolean attribute - it is
   * enabled by a boolean or 'required'. Alternative capitalizations `REQUIRED` are also
   * acccepted.
   */
  required: PropTypes.oneOfType([
    PropTypes.oneOf(['required', 'REQUIRED']),
    PropTypes.bool
  ]),

  /**
   * Apply valid style to the Input for feedback purposes. This will cause any
   * FormFeedback in the enclosing div with valid=True to display.
   */
  valid: PropTypes.bool,

  /**
   * Apply invalid style to the Input for feedback purposes. This will cause any
   * FormFeedback in the enclosing div with valid=False to display.
   */
  invalid: PropTypes.bool,

  /**
   * Set the size of the Input. Options: 'sm' (small), 'md' (medium) or 'lg' (large).
   * Default is 'md'.
   */
  size: PropTypes.string,

  /**
   * This represents the number of rows in the select that should be visible at one
   * time. It will result in the Select being rendered as a scrolling list box rather
   * than a dropdown.
   */
  html_size: PropTypes.string,

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
   * Additional CSS classes to apply to the Select.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Select;
