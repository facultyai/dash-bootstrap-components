import PropTypes from 'prop-types';
import {Jumbotron as RSJumbotron} from 'reactstrap';

const Jumbotron = props => {
  const {children, ...otherProps} = props;
  return <RSJumbotron {...otherProps}>{children}</RSJumbotron>;
};

Jumbotron.propTypes = {
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
   * If True, the jumbotron will grow to use the entire
   * horizontal space of its parent. Default: False.
   */
  fluid: PropTypes.bool,

  /**
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * HTML tag to use for the Jumbotron. Default: div.
   */
  tag: PropTypes.string
};

export default Jumbotron;
