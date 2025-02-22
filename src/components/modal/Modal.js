import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';

import RBModal from '../../private/Modal';
import {getLoadingState} from '../../private/util';

/**
 * Create a toggleable dialog using the Modal component. Toggle the visibility with the
 * `is_open` prop.
 */
function Modal({
  children,
  is_open,
  fade,
  style,
  dialog_style,
  content_style,
  backdrop_style,
  class_name,
  dialog_class_name,
  content_class_name,
  backdrop_class_name,
  autofocus,
  enforceFocus,
  labelledby,
  tag,
  zindex,
  autoFocus,
  labelledBy,
  zIndex,
  dialogStyle,
  contentStyle,
  backdropStyle,
  className,
  backdropClassName,
  contentClassName,
  dialogClassName,
  setProps,
  ...otherProps
}) {
  const onHide = () => {
    if (setProps) {
      setProps({is_open: false});
    }
  };

  return (
    <RBModal
      animation={fade}
      dialogAs={tag}
      className={class_name || className}
      dialogStyle={dialog_style || dialogStyle}
      dialogClassName={dialog_class_name || dialogClassName}
      contentStyle={content_style || contentStyle}
      contentClassName={content_class_name || contentClassName}
      backdropStyle={backdrop_style || backdropStyle}
      backdropClassName={backdrop_class_name || backdropClassName}
      autoFocus={autofocus || autoFocus}
      enforceFocus={enforceFocus}
      aria-labelledby={labelledby || labelledBy}
      show={is_open}
      onHide={onHide}
      style={zindex || zIndex ? {...style, zIndex: zindex || zIndex} : style}
      zIndex={zindex || zIndex}
      {...omit(
        ['persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBModal>
  );
}

Modal.propTypes = {
  /**
   * The children of the Modal.
   */
  children: PropTypes.node,

  /**
   * The ID of the Modal.
   */
  id: PropTypes.string,

  /**
   * Whether modal is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * If true, vertically center modal on page.
   */
  centered: PropTypes.bool,

  /**
   * It true, scroll the modal body rather than the entire modal when it is too
   * long to all fit on the screen.
   */
  scrollable: PropTypes.bool,

  /**
   * Set the size of the modal. Options sm, lg, xl for small, large or extra
   * large sized modals, or leave undefined for default size.
   */
  size: PropTypes.string,

  /**
   * Includes a modal-backdrop element. Alternatively, specify 'static' for a
   * backdrop which doesn't close the modal on click.
   */
  backdrop: PropTypes.oneOfType([PropTypes.bool, PropTypes.oneOf(['static'])]),

  /**
   * Renders a fullscreen modal. Specifying a breakpoint will render the modal
   * as fullscreen below the breakpoint size.
   */
  fullscreen: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.oneOf(['sm-down', 'md-down', 'lg-down', 'xl-down', 'xxl-down'])
  ]),

  /**
   * Close the modal when escape key is pressed.
   */
  keyboard: PropTypes.bool,

  /**
   * Set to false for a modal that simply appears rather than fades into view.
   */
  fade: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Modal.
   */
  style: PropTypes.object,

  /**
   * Inline CSS styles to apply to the dialog
   */
  dialog_style: PropTypes.object,

  /**
   * Inline CSS styles to apply to the content
   */
  content_style: PropTypes.object,

  /**
   * Inline CSS styles to apply to the backdrop
   */
  backdrop_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Modal.
   */
  class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the modal.
   */
  dialog_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the modal-backdrop.
   */
  backdrop_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the modal content.
   */
  content_class_name: PropTypes.string,

  /**
   * HTML tag to use for the Modal, default: div
   */
  tag: PropTypes.string,

  /**
   * 	Puts the focus on the modal when initialized.
   */
  autofocus: PropTypes.bool,

  /**
   * 	When true The modal will prevent focus from leaving the Modal while open.
   */
  enforceFocus: PropTypes.bool,

  /**
   * The ARIA role attribute.
   */
  role: PropTypes.string,

  /**
   * The ARIA labelledby attribute
   */
  labelledby: PropTypes.string,

  /**
   * Set the z-index of the modal. Default 1050.
   */
  zindex: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),

  /**
   * **DEPRECATED** Use `dialog_style` instead.
   *
   * Inline CSS styles to apply to the dialog
   */
  dialogStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `content_style` instead.
   *
   * Inline CSS styles to apply to the content
   */
  contentStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `content_style` instead.
   *
   * Inline CSS styles to apply to the backdrop
   */
  backdropStyle: PropTypes.object,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Modal
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** Use `backdrop_class_name` instead
   *
   * Additional CSS classes to apply to the modal-backdrop.
   */
  backdropClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `content_class_name` instead
   *
   * Additional CSS classes to apply to the modal-content.
   */
  contentClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `dialog_class_name` instead
   *
   * Additional CSS classes to apply to the modal-dialog.
   */
  dialogClassName: PropTypes.string,

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
   * **DEPRECATED** Use `zindex` instead
   *
   * Set the z-index of the modal. Default 1050.
   */
  zIndex: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),

  /**
   * Dash-assigned callback that gets fired when the input changes.
   */
  setProps: PropTypes.func
};

export default Modal;
