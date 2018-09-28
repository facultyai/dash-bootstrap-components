import PropTypes from 'prop-types';
import {NavLink as RSNavLink} from 'reactstrap';

const NavLink = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSNavLink {...otherProps} onClick={() => {
      if (props.setProps) {
        props.setProps({
          n_clicks: props.n_clicks + 1,
          n_clicks_timestamp: Date.now()
        })
      }
      if (props.fireEvent)
        props.fireEvent({event: 'click'});
  }}>
    {children}
  </RSNavLink>);
}

NavLink.defaultProps = {
  n_clicks: 0,
  n_clicks_timestamp: -1
}

NavLink.propTypes = {
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
   * The URL of the linked resource.
   */
  href: PropTypes.string,

  /**
   * Apply 'active' style to this component
   */
  active: PropTypes.bool,

  /**
   * HTML tag to use for the link, default: a
   */
  tag: PropTypes.string,

  /**
   * Apply the disabled CSS class
   */
  disabled: PropTypes.bool,

  /**
   * A callback for firing events to dash.
   */
  fireEvent: PropTypes.func,

  dashEvents: PropTypes.oneOf(['click'])
}

export default NavLink;
