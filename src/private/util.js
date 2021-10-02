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

export {parseChildrenToArray, resolveChildProps};
