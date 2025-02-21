import {any, concat, includes, toPairs, type} from 'ramda';

const parseChildrenToArray = children => {
  if (children && !Array.isArray(children)) {
    // if children contains just one single element, it gets passed as an object
    // instead of an array - so we put in in a array ourselves!
    return [children];
  }
  return children;
};

const resolveChildProps = child => {
  if (child.props.componentPath) {
    // props are coming from Dash
    return window.dash_component_api.getLayout([
      ...child.props.componentPath,
      'props'
    ]);
  }
  // else props are coming from React (e.g. Demo.js, or Tabs.test.js)
  return child.props;
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
     *   {label: `label2`, value: `value2`},
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

const getLoadingState = () => {
  const ctx = window.dash_component_api?.useDashContext();
  if (ctx) {
    return ctx.useLoading();
  }
  return false;
};

// vendored from dcc.Loading
const loadingSelector = (componentPath, targetComponents) => state => {
  let stringPath = JSON.stringify(componentPath);
  // Remove the last ] for easy match
  stringPath = stringPath.substring(0, stringPath.length - 1);
  const loadingChildren = toPairs(state.loading).reduce((acc, [path, load]) => {
    if (path.startsWith(stringPath) && load.length) {
      if (
        targetComponents &&
        !any(l => {
          const target = targetComponents[l.id];
          if (!target) {
            return false;
          }
          if (Array.isArray(target)) {
            return includes(l.property, target);
          }
          return l.property === target;
        }, load)
      ) {
        return acc;
      }
      return concat(acc, load);
    }
    return acc;
  }, []);
  if (loadingChildren.length) {
    return loadingChildren;
  }
  return null;
};

export {
  getLoadingState,
  loadingSelector,
  parseChildrenToArray,
  resolveChildProps,
  sanitizeOptions,
  stringifyId
};
