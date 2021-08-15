import React from 'react';
import PropTypes from 'prop-types';
import {default as RBOffcanvas} from 'react-bootstrap/Offcanvas';

/**
 * Create a toggleable hidden sidebar using the Offcanvas component.
 * Toggle the visibility with the `is_open` prop.
 */
const Offcanvas = props => {
  const {
    is_open,
    setProps,
    children,
    class_name,
    backdrop,
    backdrop_class_name,
    labelledby,
    scrollable,
    autofocus,
    close_button,
    title,
    ...otherProps
  } = props;

  const onHide = () => {
    if (setProps) {
      setProps({is_open: !is_open});
    }
  };

  const header =
    title || close_button ? (
      <RBOffcanvas.Header
        closeButton={close_button}
        onHide={backdrop === 'static' && close_button ? onHide : null}
      >
        <RBOffcanvas.Title>{title}</RBOffcanvas.Title>
      </RBOffcanvas.Header>
    ) : null;

  return (
    <RBOffcanvas
      aria-labelledby={labelledby}
      className={class_name}
      backdropClassName={backdrop_class_name}
      scroll={scrollable}
      autoFocus={autofocus}
      show={is_open}
      onHide={backdrop !== 'static' ? onHide : null}
      backdrop={backdrop || backdrop === 'static'}
      {...otherProps}
    >
      {header}
      <RBOffcanvas.Body>{children}</RBOffcanvas.Body>
    </RBOffcanvas>
  );
};

Offcanvas.defaultProps = {
  close_button: true,
  is_open: false,
  backdrop: true
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
   * Includes an offcanvas-backdrop element. Alternatively, specify 'static' for a
   * backdrop which doesn't close the modal on click.
   */
  backdrop: PropTypes.oneOfType([PropTypes.bool, PropTypes.oneOf(['static'])]),

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
  scrollable: PropTypes.bool,

  /**
   * 	Puts the focus on the offcanvas when initialized.
   */
  autofocus: PropTypes.bool,

  /**
   * The header title
   */
  title: PropTypes.string,

  /**
   * Specify whether the Component should contain a close button
   * in the header
   */
  close_button: PropTypes.bool
};

export default Offcanvas;
