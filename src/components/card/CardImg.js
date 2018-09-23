import PropTypes from 'prop-types';
import {CardImg as RSCardImg} from 'reactstrap';

const CardImg = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSCardImg {...otherProps}>
    {children}
  </RSCardImg>);
}

CardImg.propTypes = {
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
   * HTML tag to use for the card body, default: div
   */
  tag: PropTypes.string,

  /**
   * Place image at top of card (round corners etc.)
   */
  top: PropTypes.bool,

  /**
   * Place image at bottom of card (round corners etc.)
   */
  bottom: PropTypes.bool,

  /**
   * The URI of the embeddable content.
   */
  src: PropTypes.string,

  /**
   * Alternative text in case an image can't be displayed.
   */
  alt: PropTypes.string,

  /**
   * Text to be displayed as a tooltip when hovering
   */
  title: PropTypes.string
}

export default CardImg;
