import PropTypes from 'prop-types';
import {Jumbotron as RSJumbotron} from 'reactstrap';

const Jumbotron = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSJumbotron {...otherProps}>
    {children}
  </RSJumbotron>);
}

Jumbotron.propTypes = {
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
   * Alert color, options: primary, secondary, success, info, warning, danger,
   * link. Default is secondary
   */
  fluid: PropTypes.bool,

  /**
   * Whether alert is open, default: true
   */
  className: PropTypes.string,

  /**
   * HTML tag to use for the Jumbotron, default: div
   */
  tag: PropTypes.string
}

export default Jumbotron;
