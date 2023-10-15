import React from 'react';
import PropTypes from 'prop-types';
import {append, includes, without} from 'ramda';
import classNames from 'classnames';

/**
 * Checklist is a component that encapsulates several checkboxes.
 * The values and labels of the checklist is specified in the `options`
 * property and the checked items are specified with the `value` property.
 * Each checkbox is rendered as an input / label pair. `Checklist` must be
 * given an `id` to work properly.
 */
const Checkbox = props => {
  const {
    value,
    disabled,
    className,
    class_name,
    style,
    id,
    input_class_name,
    inputClassName,
    input_style,
    label,
    label_id,
    label_style,
    label_class_name,
    labelClassName,
    loading_state,
    name,
    setProps
  } = props;

  return (
    <div
      className={classNames('form-check', class_name || className)}
      style={style}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      <input
        id={id}
        name={name}
        checked={value}
        className={classNames(
          'form-check-input',
          input_class_name || inputClassName
        )}
        disabled={disabled}
        style={input_style}
        type="checkbox"
        onChange={() => {
          if (!disabled) {
            if (setProps) {
              setProps({value: !value});
            }
          }
        }}
      />
      <label
        id={label_id}
        style={label_style}
        className={classNames(
          label_class_name || labelClassName,
          'form-check-label',
          'form-label'
        )}
        htmlFor={id}
      >
        {label}
      </label>
    </div>
  );
};

Checkbox.propTypes = {
  /**
   * The ID of this component, used to identify dash components in callbacks.
   * The ID needs to be unique across all of the components in an app.
   */
  id: PropTypes.string,

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
   * The style of the container (div)
   */
  style: PropTypes.object,

  /**
   * The style of the <input> checkbox element.
   */
  input_style: PropTypes.object,

  /**
   * **DEPRECATED** Use `input_style` instead.
   *
   * The style of the <input> checkbox element.
   */
  inputStyle: PropTypes.object,

  /**
   * The class of the <input> checkbox element
   */
  input_class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `input_class_name` instead.
   *
   * The class of the <input> checkbox element
   */
  inputClassName: PropTypes.string,

  /**
   * The label of the <input> element
   */
  label: PropTypes.node,

  /**
   * The id of the label
   */
  label_id: PropTypes.string,

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
   * The name of the control, which is submitted with the form data.
   */
  name: PropTypes.string,

  /**
   * Disable the Checkbox.
   **/
  disabled: PropTypes.bool,

  /**
   * The value of the input.
   **/
  value: PropTypes.bool,

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
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

Checkbox.defaultProps = {
  inputStyle: {},
  input_style: null,
  inputClassName: '',
  input_class_name: '',
  labelStyle: {},
  label_style: null,
  labelClassName: '',
  label_class_name: '',
  persisted_props: ['value'],
  persistence_type: 'local',
  value: false,
  disabled: false
};

export default Checkbox;
