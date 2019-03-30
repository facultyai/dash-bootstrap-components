import React from 'react';
import PropTypes from 'prop-types';
import {append, contains, without} from 'ramda';
import classNames from 'classnames';

/**
 * Checklist is a component that encapsulates several checkboxes.
 * The values and labels of the checklist is specified in the `options`
 * property and the checked items are specified with the `values` property.
 * Each checkbox is rendered as an input with a surrounding label.
 */
class Checklist extends React.Component {
  constructor(props) {
    super(props);
    this.state = {values: props.values};
  }

  componentWillReceiveProps(newProps) {
    this.setState({values: newProps.values});
  }

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
      loading_state
    } = this.props;
    const {values} = this.state;

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
              checked={contains(option.value, values)}
              className={classNames('form-check-input', inputClassName)}
              disabled={Boolean(option.disabled)}
              style={inputStyle}
              type="checkbox"
              onChange={() => {
                let newValues;
                if (contains(option.value, values)) {
                  newValues = without([option.value], values);
                } else {
                  newValues = append(option.value, values);
                }
                this.setState({values: newValues});
                if (setProps) {
                  setProps({values: newValues});
                }
              }}
            />
            <label
              style={labelStyle}
              className={classNames(labelClassName, 'form-check-label')}
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
  id: PropTypes.string,

  /**
   * An array of options
   */
  options: PropTypes.arrayOf(
    PropTypes.shape({
      /**
       * The checkbox's label
       */
      label: PropTypes.string,

      /**
       * The value of the checkbox. This value
       * corresponds to the items specified in the
       * `values` property.
       */
      value: PropTypes.string,

      /**
       * If true, this checkbox is disabled and can't be clicked on.
       */
      disabled: PropTypes.bool
    })
  ),

  /**
   * The currently selected value
   */
  values: PropTypes.arrayOf(PropTypes.string),

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
  options: []
};

export default Checklist;
