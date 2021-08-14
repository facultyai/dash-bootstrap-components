import React from 'react';
import PropTypes from 'prop-types';
import {default as RBOffcanvas} from 'react-bootstrap/Offcanvas';

/**
 * Create a toggleable hidden sidebar using the Modal component.
 * Toggle the visibility with the `is_open` prop.
 */
const Offcanvas = props => {
  const {
    is_open,
    setProps,
    children,
    class_name,
    backdrop_class_name,
    labelledby,
    scrollable,
    ...otherProps
  } = props;

  const onHide = () => {
    if (setProps) {
      setProps({is_open: !is_open});
    }
  };

  // Left out:
  // - container
  // - autoFocus
  // - enforceFocus
  // - onEnter
  // - onEntered
  // - onEntering
  // - onEscapeKeyDown
  // - onExit
  // - onExited
  // - onExiting
  // - onShow
  // - restoreFocus
  // - restoreFocusOptions

  return (
    <RBOffcanvas
      aria-labelledby={labelledby}
      className={class_name}
      backdropClassName={backdrop_class_name}
      scroll={scrollable}
      show={is_open}
      onHide={onHide}
      {...otherProps}
    >
      {children}
    </RBOffcanvas>
  );
};

Offcanvas.propTypes = {
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
  class_name: PropTypes.string,

  /**
   * The ARIA labelledby attribute
   */
  labelledby: PropTypes.string,

  /**
   * Includes a modal-backdrop element.
   */
  backdrop: PropTypes.bool,

  /**
   * CSS class to apply to the backdrop.
   */
  backdrop_class_name: PropTypes.string,

  /**
   * Close the offcanvas when escape key is pressed.
   */
  keyboard: PropTypes.bool,

  /**
   * Whether offcanvas is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * Which side of the viewport the offcanvas will appear from.
   */
  placement: PropTypes.oneOf(['start', 'end', 'top', 'bottom']),

  /**
   * Allow body scrolling while offcanvas is open.
   */
  scrollable: PropTypes.bool
};

export default Offcanvas;
