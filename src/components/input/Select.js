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
      {...omit(
        [
          'value',
          'setProps',
          'bs_size',
          'options',
          'persistence',
          'persistence_type',
          'persisted_props'
        ],
        props
      )}
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

Select.defaultProps = {
  persisted_props: ['value'],
  persistence_type: 'local'
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
  bs_size: PropTypes.string,

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
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory'])
};

export default Select;
