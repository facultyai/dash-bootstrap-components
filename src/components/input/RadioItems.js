import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';
import CustomInput from '../../private/CustomInput';

/**
 * RadioItems is a component that encapsulates several radio item inputs.
 * The values and labels of the RadioItems is specified in the `options`
 * property and the seleced item is specified with the `value` property.
 * Each radio item is rendered as an input and associated label which are
 * siblings of each other.
 */

class RadioItems extends React.Component {
  constructor(props) {
    super(props);

    this.listItem = this.listItem.bind(this);
  }

  listItem(option) {
    const {
      id,
      inputClassName,
      inputStyle,
      labelClassName,
      labelCheckedClassName,
      labelStyle,
      labelCheckedStyle,
      setProps,
      inline,
      value,
      custom,
      switch: switches
    } = this.props;

    const checked = option.value === value;

    const mergedLabelStyle = checked
      ? {...labelStyle, ...labelCheckedStyle}
      : labelStyle;

    if (id && custom) {
      return (
        <CustomInput
          id={`${id}-${option.value}`}
          checked={checked}
          className={inputClassName}
          disabled={Boolean(option.disabled)}
          type={switches ? 'switch' : 'radio'}
          label={option.label}
          labelStyle={mergedLabelStyle}
          labelClassName={classNames(
            labelClassName,
            checked && labelCheckedClassName
          )}
          inline={inline}
          onChange={() => {
            setProps({value: option.value});
          }}
          key={option.value}
        />
      );
    } else {
      return (
        <div
          className={classNames('form-check', inline && 'form-check-inline')}
          key={option.value}
        >
          <input
            checked={checked}
            className={classNames('form-check-input', inputClassName)}
            disabled={Boolean(option.disabled)}
            style={inputStyle}
            type="radio"
            onChange={() => {
              setProps({value: option.value});
            }}
          />
          <label
            style={mergedLabelStyle}
            className={classNames(
              'form-check-label',
              labelClassName,
              checked && labelCheckedClassName
            )}
            key={option.value}
          >
            {option.label}
          </label>
        </div>
      );
    }
  }

  render() {
    const {id, className, style, options, key, loading_state} = this.props;

    const items = options.map(option => this.listItem(option));

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
        {items}
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
   * Inline style arguments to apply to the <label> element for each item.
   */
  labelStyle: PropTypes.object,

  /**
   * Additional inline style arguments to apply to <label> elements on checked
   * items.
   */
  labelCheckedStyle: PropTypes.object,

  /**
   * CSS classes to apply to the <label> element for each item.
   */
  labelClassName: PropTypes.string,

  /**
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
   * Set to True to render toggle-like switches instead of radios. Ignored if
   * custom=False
   */
  switch: PropTypes.bool,

  /**
   * RadioItems uses custom radio buttons by default. To use native radios set
   * custom to False.
   */
  custom: PropTypes.bool,

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
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory'])
};

RadioItems.defaultProps = {
  inputStyle: {},
  inputClassName: '',
  labelStyle: {},
  labelClassName: '',
  options: [],
  custom: true,
  persisted_props: ['value'],
  persistence_type: 'local'
};

export default RadioItems;
