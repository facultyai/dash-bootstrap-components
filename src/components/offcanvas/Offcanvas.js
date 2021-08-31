import React from 'react';
import PropTypes from 'prop-types';
import RBOffcanvas from 'react-bootstrap/Offcanvas';

/**
 * Create a toggleable hidden sidebar using the Offcanvas component.
 * Toggle the visibility with the `is_open` prop.
 */
const Offcanvas = props => {
  const {
    is_open,
    setProps,
    children,
    loading_state,
    class_name,
    className,
    backdrop,
    backdrop_class_name,
    backdropClassName,
    labelledby,
    labelledBy,
    scrollable,
    autofocus,
    autoFocus,
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
      autoFocus={autofocus || autoFocus}
      aria-labelledby={labelledby || labelledBy}
      className={class_name || className}
      backdropClassName={backdrop_class_name || backdropClassName}
      scroll={scrollable}
      show={is_open}
      onHide={backdrop !== 'static' ? onHide : null}
      backdrop={backdrop || backdrop === 'static'}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
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
   * **DEPRECATED** - Use class_name instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * The ARIA labelledby attribute
   */
  labelledby: PropTypes.string,

  /**
   * **DEPRECATED** Use `labelledby` instead
   *
   * The ARIA labelledby attribute
   */
  labelledBy: PropTypes.string,

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
   * **DEPRECATED** - Use backdrop_class_name instead.
   *
   * CSS class to apply to the backdrop.
   */
  backdropClassName: PropTypes.string,

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
   * **DEPRECATED** Use `autofocus` instead
   *
   * 	Puts the focus on the modal when initialized.
   */
  autoFocus: PropTypes.bool,

  /**
   * The header title
   */
  title: PropTypes.string,

  /**
   * Specify whether the Component should contain a close button
   * in the header
   */
  close_button: PropTypes.bool,

  /**
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  })
};

export default Offcanvas;
