import React, {Fragment} from 'react';
import PropTypes from 'prop-types';
import {omit, type} from 'ramda';
import {Spinner as RSSpinner} from 'reactstrap';

const Spinner = props => {
  const {children, loading_state, spinnerStyle, ...otherProps} = props;
  let modSpinnerStyle;
  if (children) {
    // this spacing is consistent with the behaviour of dcc.Loading
    // it can be overridden with spinnerStyle
    modSpinnerStyle = {display: 'block', margin: '1rem auto'};
  } else {
    modSpinnerStyle = {};
  }
  modSpinnerStyle = {...modSpinnerStyle, ...spinnerStyle};
  if (!children || (loading_state && loading_state.is_loading)) {
    return (
      <RSSpinner
        style={modSpinnerStyle}
        {...omit(['setProps', 'className', 'style'], otherProps)}
      />
    );
  }
  if (type(children) !== 'Object' || type(children) !== 'Function') {
    return <Fragment>{children}</Fragment>;
  }
  return children;
};

Spinner._dashprivate_isLoadingComponent = true;

Spinner.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
   */
  children: PropTypes.node,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Inline CSS styles to apply to the spinner.
   */
  spinnerStyle: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * CSS class names to apply to the spinner.
   */
  spinnerClassName: PropTypes.string,

  /**
   * Spinner color, options: primary, secondary, success, info, warning, danger,
   * link. If not specified will default to text colour.
   */
  color: PropTypes.string,

  /**
   * The type of spinner. Options 'border' and 'grow'. Default 'border'.
   */
  type: PropTypes.string,

  /**
   * The spinner size. Options are 'sm', 'md' and 'lg'.
   */
  size: PropTypes.string
};

export default Spinner;
