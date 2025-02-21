import React from 'react';

import PropTypes from 'prop-types';
import RBOffcanvas from 'react-bootstrap/Offcanvas';

import {getLoadingState} from '../../private/util';

/**
 * Create a toggleable hidden sidebar using the Offcanvas component.
 * Toggle the visibility with the `is_open` prop.
 */
function Offcanvas({
  children,
  is_open = false,
  close_button = true,
  title,
  backdrop = true,
  scrollable,
  class_name,
  backdrop_class_name,
  autofocus,
  labelledby,
  className,
  backdropClassName,
  autoFocus,
  labelledBy,
  setProps,
  ...otherProps
}) {
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
      autoFocus={autofocus || autoFocus}
      aria-labelledby={labelledby || labelledBy}
      className={class_name || className}
      backdropClassName={backdrop_class_name || backdropClassName}
      scroll={scrollable}
      show={is_open}
      onHide={backdrop !== 'static' ? onHide : null}
      backdrop={backdrop || backdrop === 'static'}
      data-dash-is-loading={getLoadingState() || undefined}
      {...otherProps}
    >
      {header}
      <RBOffcanvas.Body>{children}</RBOffcanvas.Body>
    </RBOffcanvas>
  );
}

Offcanvas.propTypes = {
  /**
   * The children of the Offcanvas.
   */
  children: PropTypes.node,

  /**
   * The ID of the Offcanvas.
   */
  id: PropTypes.string,

  /**
   * Whether offcanvas is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * The header title
   */
  title: PropTypes.node,

  /**
   * Which side of the viewport the offcanvas will appear from.
   */
  placement: PropTypes.oneOf(['start', 'end', 'top', 'bottom']),

  /**
   * Includes an offcanvas-backdrop element. Alternatively, specify 'static' for a
   * backdrop which doesn't close the modal on click.
   */
  backdrop: PropTypes.oneOfType([PropTypes.bool, PropTypes.oneOf(['static'])]),

  /**
   * Specify whether the Offcanvas should contain a close button
   * in the header
   */
  close_button: PropTypes.bool,

  /**
   * If True, the offcanvas will close when the escape key is pressed.
   */
  keyboard: PropTypes.bool,

  /**
   * Allow body scrolling while offcanvas is open.
   */
  scrollable: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Offcanvas.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Offcanvas
   */
  class_name: PropTypes.string,

  /**
   * CSS class to apply to the backdrop.
   */
  backdrop_class_name: PropTypes.string,

  /**
   * 	Puts the focus on the offcanvas when initialized.
   */
  autofocus: PropTypes.bool,

  /**
   * The ARIA labelledby attribute
   */
  labelledby: PropTypes.string,

  /**
   * **DEPRECATED** - Use class_name instead.
   *
   * Additional CSS classes to apply to the Offcanvas
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** - Use backdrop_class_name instead.
   *
   * CSS class to apply to the backdrop.
   */
  backdropClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `autofocus` instead
   *
   * 	Puts the focus on the modal when initialized.
   */
  autoFocus: PropTypes.bool,

  /**
   * **DEPRECATED** Use `labelledby` instead
   *
   * The ARIA labelledby attribute
   */
  labelledBy: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Offcanvas;
