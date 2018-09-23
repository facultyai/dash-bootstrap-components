import PropTypes from 'prop-types';
import classNames from 'classnames';
import DashLink from '../base/DashLink';

const CardLink = props => {
  const {
    children,
    className,
    ...otherProps
  } = props;
  const classes = classNames(className, 'card-link');
  return (<DashLink className={classes} {...otherProps}>
    {children}
  </DashLink>);
}

CardLink.propTypes = {
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
   * URL of the resource to link to
   */
  href: PropTypes.string,

  /**
   * Whether to refresh the page if using as a dash core components style link.
   * Default: False
   */
  refresh: PropTypes.bool,

  /**
   * Whether to use this link as a dash core components style link or a HTML anchor
   */
  dashLink: PropTypes.bool,

  /**
   * An integer that represents the number of times
   * that this element has been clicked on.
   */
  n_clicks: PropTypes.number,

  /**
   * An integer that represents the time (in ms since 1970)
   * at which n_clicks changed. This can be used to tell
   * which button was changed most recently.
   */
  n_clicks_timestamp: PropTypes.number
}

export default CardLink;
