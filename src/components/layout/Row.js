import PropTypes from 'prop-types';
import {Row as RSRow} from 'reactstrap';

const Row = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSRow {...otherProps}>
    {children}
  </RSRow>);
}

Row.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * Remove the "gutters" between columns in this row.
   * see https://getbootstrap.com/docs/4.0/layout/grid/#no-gutters
   */
  noGutters: PropTypes.bool,

  /**
   * HTML tag to use for the row, default: div
   */
  tag: PropTypes.string
}

export default Row;
