import React from 'react';
import PropTypes from 'prop-types';
import {append, contains, without} from 'ramda';
import classNames from 'classnames';

/**
 * Checklist is a component that encapsulates several checkboxes.
 * The values and labels of the checklist is specified in the `options`
 * property and the checked items are specified with the `value` property.
 * Each checkbox is rendered as an input with a surrounding label.
 */
class Checklist extends React.Component {
  render() {
    const {
      className,
      id,
      inputClassName,
      inputStyle,
      labelClassName,
      labelStyle,
      options,
      setProps,
      style,
      inline,
      key,
      value,
      loading_state
    } = this.props;

    return (
      <div
        id={id}
        style={style}
        className={className}
        key={key}
        data-dash-is-loading={
          (loading_state && loading_state.is_loading) || undefined
        }
      >
        {options.map(option => (
          <div
            className={classNames('form-check', inline && 'form-check-inline')}
            key={option.value}
          >
            <input
              checked={contains(option.value, value)}
              className={classNames('form-check-input', inputClassName)}
              disabled={Boolean(option.disabled)}
              style={inputStyle}
              type="checkbox"
              onChange={() => {
                let newValue;
                if (contains(option.value, value)) {
                  newValue = without([option.value], value);
                } else {
                  newValue = append(option.value, value);
                }
                setProps({value: newValue});
              }}
            />
            <label
              style={labelStyle}
              className={classNames('form-check-label', labelClassName)}
              key={option.value}
            >
              {option.label}
            </label>
          </div>
        ))}
      </div>
    );
  }
}

Checklist.propTypes = {
  /**
   * The ID of this component, used to identify dash components in callbacks.
   * The ID needs to be unique across all of the components in an app.
   */
  id: PropTypes.string,

  /**
   * An array of options
   */
  options: PropTypes.arrayOf(
    PropTypes.exact({
      /**
       * The checkbox's label
       */
      label: PropTypes.oneOfType([PropTypes.string, PropTypes.number])
        .isRequired,

      /**
       * The value of the checkbox. This value corresponds to the items
       * specified in the `value` property.
       */
      value: PropTypes.oneOfType([PropTypes.string, PropTypes.number])
        .isRequired,

      /**
       * If true, this checkbox is disabled and can't be clicked on.
       */
      disabled: PropTypes.bool
    })
  ),

  /**
   * The currently selected value
   */
  value: PropTypes.arrayOf(
    PropTypes.oneOfType([PropTypes.string, PropTypes.number])
  ),

  /**
   * The class of the container (div)
   */
  className: PropTypes.string,

  /**
   * The style of the container (div)
   */
  style: PropTypes.object,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * The style of the <input> checkbox element
   */
  inputStyle: PropTypes.object,

  /**
   * The class of the <input> checkbox element
   */
  inputClassName: PropTypes.string,

  /**
   * The style of the <label> that wraps the checkbox input
   *  and the option's label
   */
  labelStyle: PropTypes.object,

  /**
   * The class of the <label> that wraps the checkbox input
   *  and the option's label
   */
  labelClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func,

  /**
   * Arrange Checklist inline
   */
  inline: PropTypes.bool,

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
  })
};

Checklist.defaultProps = {
  inputStyle: {},
  inputClassName: '',
  labelStyle: {},
  labelClassName: '',
  options: [],
  value: []
};

export default Checklist;
