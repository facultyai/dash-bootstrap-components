import PropTypes from 'prop-types';
import {Fade as RSFade} from 'reactstrap';

const Fade = props => {
  const {children, base_class, base_class_active, ...otherProps} = props;
  return <RSFade baseClass={base_class} baseClassActive={base_class_active} {...otherProps}>{children}</RSFade>;
};

Fade.propTypes = {
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
  in: PropTypes.bool,

  /**
   * The duration of the transition, in milliseconds.
   *
   * You may specify a single timeout for all transitions like: `timeout=500`
   * or individually like: timeout={'enter': 300, 'exit': 500}
   */
  timeout: PropTypes.oneOfType([
    PropTypes.number,
    PropTypes.shape({enter: PropTypes.number, exit: PropTypes.number})
      .isRequired
  ]),

  /**
   * Make component appear when page loads.
   */
  appear: PropTypes.bool,

  /**
   * Enable or disable enter transitions.
   */
  enter: PropTypes.bool,

  /**
   * Enable or disable exit transitions.
   */
  exit: PropTypes.bool,

  /**
   * HTML tag to use for the fade component, default div.
   */
  tag: PropTypes.string,
  base_class: PropTypes.string,
  base_class_active: PropTypes.string
};

export default Fade;
