import PropTypes from 'prop-types';
import {append, contains, without} from 'ramda';
import React from 'react';
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
      fireEvent,
      id,
      inputClassName,
      inputStyle,
      labelClassName,
      labelStyle,
      options,
      setProps,
      style,
      inline
    } = this.props;
    const {values} = this.state;

    return (
      <div id={id} style={style} className={className}>
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
                if (fireEvent) {
                  fireEvent({event: 'change'});
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
   * Dash-assigned callback that gets fired when the checkbox item gets selected.
   */
  fireEvent: PropTypes.func,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func,

  /**
   * Arrange Checklist inline
   */
  inline: PropTypes.bool,

  dashEvents: PropTypes.oneOf(['change'])
};

Checklist.defaultProps = {
  inputStyle: {},
  inputClassName: '',
  labelStyle: {},
  labelClassName: '',
  options: []
};

export default Checklist;
