import {type} from 'ramda';

const parseChildrenToArray = children => {
  if (children && !Array.isArray(children)) {
    // if children contains just one single element, it gets passed as an object
    // instead of an array - so we put in in a array ourselves!
    return [children];
  }
  return children;
};

const resolveChildProps = child => {
  // This may need to change in the future if https://github.com/plotly/dash-renderer/issues/84 is addressed
  if (
    child.props._dashprivate_layout &&
    child.props._dashprivate_layout.props
  ) {
    // props are coming from Dash
    return child.props._dashprivate_layout.props;
  } else {
    // else props are coming from React (e.g. Demo.js, or Tabs.test.js)
    return child.props;
  }
};

const sanitizeOptions = options => {
  if (type(options) === 'Object') {
    /**
     * Simpler `options` representation in dictionary format. The order is not
     * guaranteed.
     * {`value1`: `label1`, `value2`: `label2`, ... }
     * which is equal to
     * [
     *   {label: `label1`, value: `value1`},
     *   {label: `label2`, value: `value2`}, ...
     * ]
     */
    return Object.entries(options).map(([value, label]) => ({
      label: String(label),
      value
    }));
  }

  if (type(options) === 'Array') {
    if (options.length > 0 && ['String', 'Number'].includes(type(options[0]))) {
      /**
       * Array of options where the label and the value are the same thing -
       * [string|number]
       */
      return options.map(option => ({
        label: String(option),
        value: option
      }));
    }
    return options;
  }

  /**
   * An array of options {label: [string|number], value: [string|number]},
   * an optional disabled field can be used for each option
   */
  return options;
};

const stringifyId = id => {
  if (typeof id !== 'object') {
    return id;
  }
  const stringifyVal = v => (v && v.wild) || JSON.stringify(v);
  const parts = Object.keys(id)
    .sort()
    .map(k => JSON.stringify(k) + ':' + stringifyVal(id[k]));
  return '{' + parts.join(',') + '}';
};

export {parseChildrenToArray, resolveChildProps, sanitizeOptions, stringifyId};
