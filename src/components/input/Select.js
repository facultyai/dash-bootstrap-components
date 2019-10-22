import React, {useEffect, useState} from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {CustomInput} from 'reactstrap';

const Select = props => {
  const [value, setValue] = useState('');

  const handleChange = e => {
    if (props.setProps) {
      props.setProps({value: e.target.value});
    } else {
      setValue(e.target.value);
    }
  };

  useEffect(() => {
    if (props.value !== value) {
      setValue(props.value || '');
    }
  }, [props.value]);

  return (
    <CustomInput
      {...omit(['value', 'setProps', 'bs_size', 'options'], props)}
      type="select"
      onChange={handleChange}
      value={value}
      bsSize={props.bs_size}
    >
      <option value="" disabled hidden></option>
      {props.options.map(option => (
        <option
          key={option.value}
          value={option.value}
          disabled={option.disabled}
        >
          {option.label}
        </option>
      ))}
    </CustomInput>
  );
};

Select.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
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
   * The value of the currently selected option.
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * An array of options for the select
   */
  options: PropTypes.arrayOf(
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
      disabled: PropTypes.bool
    })
  ),

  /**
   * Set to True to disable the Select.
   */
  disabled: PropTypes.bool,

  /**
   * Apply valid style to the Input for feedback purposes. This will cause
   * any FormFeedback in the enclosing FormGroup with valid=True to display.
   */
  valid: PropTypes.bool,

  /**
   * Apply invalid style to the Input for feedback purposes. This will cause
   * any FormFeedback in the enclosing FormGroup with valid=False to display.
   */
  invalid: PropTypes.bool,

  /**
   * Set the size of the Input. Options: 'sm' (small), 'md' (medium)
   * or 'lg' (large). Default is 'md'.
   */
  bs_size: PropTypes.string
};

export default Select;
