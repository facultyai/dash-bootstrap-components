import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

/**
 * RadioItems is a component that encapsulates several radio item inputs.
 * The values and labels of the RadioItems is specified in the `options`
 * property and the seleced item is specified with the `value` property.
 * Each radio item is rendered as an input with a surrounding label.
 */

class RadioItems extends React.Component {
  render() {
    const {
      id,
      className,
      style,
      inputClassName,
      inputStyle,
      labelClassName,
      labelStyle,
      options,
      setProps,
      inline,
      key,
      value,
      loading_state
    } = this.props;

    return (
      <div
        id={id}
        className={className}
        style={style}
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
              checked={option.value === value}
              className={classNames('form-check-input', inputClassName)}
              disabled={Boolean(option.disabled)}
              style={inputStyle}
              type="radio"
              onChange={() => {
                setProps({value: option.value});
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

RadioItems.propTypes = {
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
   * An array of options
   */
  options: PropTypes.arrayOf(
    PropTypes.exact({
      /**
       * The radio item's label
       */
      label: PropTypes.oneOfType([PropTypes.string, PropTypes.number])
        .isRequired,

      /**
       * The value of the radio item. This value corresponds to the items
       * specified in the `value` property.
       */
      value: PropTypes.oneOfType([PropTypes.string, PropTypes.number])
        .isRequired,

      /**
       * If true, this radio item is disabled and can't be clicked on.
       */
      disabled: PropTypes.bool
    })
  ),

  /**
   * The currently selected value
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * The style of the container (div)
   */
  style: PropTypes.object,

  /**
   * The class of the container (div)
   */
  className: PropTypes.string,

  /**
   * The style of the <input> radio element
   */
  inputStyle: PropTypes.object,

  /**
   * The class of the <input> radio element
   */
  inputClassName: PropTypes.string,

  /**
   * The style of the <label> that wraps the radio input
   *  and the option's label
   */
  labelStyle: PropTypes.object,

  /**
   * The class of the <label> that wraps the radio input
   *  and the option's label
   */
  labelClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func,

  /**
   * Arrange RadioItems inline
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

RadioItems.defaultProps = {
  inputStyle: {},
  inputClassName: '',
  labelStyle: {},
  labelClassName: '',
  options: []
};

export default RadioItems;
