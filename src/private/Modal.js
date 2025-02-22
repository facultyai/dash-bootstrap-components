// vendored from React-Bootstrap to allow us to set z-index of Modal backdrop
// https://github.com/react-bootstrap/react-bootstrap/blob/be23c304fa40ddb209919b0faac1e5dd8cef53ad/src/Modal.tsx
import React, {useCallback, useMemo, useRef, useState} from 'react';

import useCallbackRef from '@restart/hooks/useCallbackRef';
import useEventCallback from '@restart/hooks/useEventCallback';
import useMergedRefs from '@restart/hooks/useMergedRefs';
import useWillUnmount from '@restart/hooks/useWillUnmount';
import BaseModal from '@restart/ui/Modal';
import classNames from 'classnames';
import addEventListener from 'dom-helpers/addEventListener';
import canUseDOM from 'dom-helpers/canUseDOM';
import ownerDocument from 'dom-helpers/ownerDocument';
import removeEventListener from 'dom-helpers/removeEventListener';
import getScrollbarSize from 'dom-helpers/scrollbarSize';
import transitionEnd from 'dom-helpers/transitionEnd';
import PropTypes from 'prop-types';
import {getSharedManager} from 'react-bootstrap/BootstrapModalManager';
import Fade from 'react-bootstrap/Fade';
import ModalContext from 'react-bootstrap/ModalContext';
import {useIsRTL} from 'react-bootstrap/ThemeProvider';

import ModalDialog from './ModalDialog';

function DialogTransition(props) {
  return <Fade {...props} timeout={null} />;
}

function BackdropTransition(props) {
  return <Fade {...props} timeout={null} />;
}

const Modal = React.forwardRef(function Modal(
  {
    className,
    style,
    dialogClassName,
    contentClassName,
    children,
    dialogStyle,
    contentStyle,
    backdropStyle,
    'data-bs-theme': dataBsTheme,
    'aria-labelledby': ariaLabelledby,
    'aria-describedby': ariaDescribedby,
    'aria-label': ariaLabel,

    /* BaseModal props */

    onEscapeKeyDown,
    onShow,
    onHide,
    container,
    restoreFocusOptions,
    onEntered,
    onExit,
    onExiting,
    onEnter,
    onEntering,
    onExited,
    backdropClassName,
    zIndex,
    manager: propsManager,
    show = false,
    backdrop = true,
    keyboard = true,
    autoFocus = true,
    enforceFocus = true,
    restoreFocus = true,
    animation = true,
    dialogAs: Dialog = ModalDialog,
    ...props
  },
  ref
) {
  const [modalStyle, setStyle] = useState({});
  const [animateStaticModal, setAnimateStaticModal] = useState(false);
  const waitingForMouseUpRef = useRef(false);
  const ignoreBackdropClickRef = useRef(false);
  const removeStaticModalAnimationRef = useRef(null);
  const [modal, setModalRef] = useCallbackRef();
  const mergedRef = useMergedRefs(ref, setModalRef);
  const handleHide = useEventCallback(onHide);
  const isRTL = useIsRTL();

  const modalContext = useMemo(
    () => ({
      onHide: handleHide
    }),
    [handleHide]
  );

  function getModalManager() {
    if (propsManager) return propsManager;
    return getSharedManager({isRTL});
  }

  function updateDialogStyle(node) {
    if (!canUseDOM) return;

    const containerIsOverflowing = getModalManager().getScrollbarWidth() > 0;

    const modalIsOverflowing =
      node.scrollHeight > ownerDocument(node).documentElement.clientHeight;

    setStyle({
      paddingRight:
        containerIsOverflowing && !modalIsOverflowing
          ? getScrollbarSize()
          : undefined,
      paddingLeft:
        !containerIsOverflowing && modalIsOverflowing
          ? getScrollbarSize()
          : undefined
    });
  }

  const handleWindowResize = useEventCallback(() => {
    if (modal) {
      updateDialogStyle(modal.dialog);
    }
  });

  useWillUnmount(() => {
    removeEventListener(window, 'resize', handleWindowResize);
    removeStaticModalAnimationRef.current?.();
  });

  // We prevent the modal from closing during a drag by detecting where the
  // click originates from. If it starts in the modal and then ends outside
  // don't close.
  const handleDialogMouseDown = () => {
    waitingForMouseUpRef.current = true;
  };

  const handleMouseUp = e => {
    if (waitingForMouseUpRef.current && modal && e.target === modal.dialog) {
      ignoreBackdropClickRef.current = true;
    }
    waitingForMouseUpRef.current = false;
  };

  const handleStaticModalAnimation = () => {
    setAnimateStaticModal(true);
    removeStaticModalAnimationRef.current = transitionEnd(modal.dialog, () => {
      setAnimateStaticModal(false);
    });
  };

  const handleStaticBackdropClick = e => {
    if (e.target !== e.currentTarget) {
      return;
    }

    handleStaticModalAnimation();
  };

  const handleClick = e => {
    if (backdrop === 'static') {
      handleStaticBackdropClick(e);
      return;
    }

    if (ignoreBackdropClickRef.current || e.target !== e.currentTarget) {
      ignoreBackdropClickRef.current = false;
      return;
    }

    onHide?.();
  };

  const handleEscapeKeyDown = e => {
    if (keyboard) {
      onEscapeKeyDown?.(e);
    } else {
      // Call preventDefault to stop modal from closing in @restart/ui.
      e.preventDefault();

      if (backdrop === 'static') {
        // Play static modal animation.
        handleStaticModalAnimation();
      }
    }
  };

  const handleEnter = (node, isAppearing) => {
    if (node) {
      updateDialogStyle(node);
    }

    onEnter?.(node, isAppearing);
  };

  const handleExit = node => {
    removeStaticModalAnimationRef.current?.();
    onExit?.(node);
  };

  const handleEntering = (node, isAppearing) => {
    onEntering?.(node, isAppearing);

    // FIXME: This should work even when animation is disabled.
    addEventListener(window, 'resize', handleWindowResize);
  };

  const handleExited = node => {
    if (node) node.style.display = ''; // RHL removes it sometimes
    onExited?.(node);

    // FIXME: This should work even when animation is disabled.
    removeEventListener(window, 'resize', handleWindowResize);
  };

  const renderBackdrop = useCallback(
    backdropProps => (
      <div
        {...backdropProps}
        className={classNames(
          'modal-backdrop',
          backdropClassName,
          !animation && 'show'
        )}
        style={{...backdropStyle, zIndex}}
      />
    ),
    [animation, backdropClassName, zIndex]
  );

  const baseModalStyle = {...style, ...modalStyle};

  // If `display` is not set to block, autoFocus inside the modal fails
  // https://github.com/react-bootstrap/react-bootstrap/issues/5102
  baseModalStyle.display = 'block';

  const renderDialog = dialogProps => (
    <div
      role="dialog"
      {...dialogProps}
      style={baseModalStyle}
      className={classNames(
        className,
        'modal',
        animateStaticModal && 'modal-static',
        !animation && 'show'
      )}
      onClick={backdrop ? handleClick : undefined}
      onMouseUp={handleMouseUp}
      data-bs-theme={dataBsTheme}
      aria-label={ariaLabel}
      aria-labelledby={ariaLabelledby}
      aria-describedby={ariaDescribedby}
    >
      <Dialog
        {...props}
        onMouseDown={handleDialogMouseDown}
        className={dialogClassName}
        style={dialogStyle}
        contentClassName={contentClassName}
        contentStyle={contentStyle}
      >
        {children}
      </Dialog>
    </div>
  );

  return (
    <ModalContext.Provider value={modalContext}>
      <BaseModal
        show={show}
        ref={mergedRef}
        backdrop={backdrop}
        container={container}
        keyboard // Always set true - see handleEscapeKeyDown
        autoFocus={autoFocus}
        enforceFocus={enforceFocus}
        restoreFocus={restoreFocus}
        restoreFocusOptions={restoreFocusOptions}
        onEscapeKeyDown={handleEscapeKeyDown}
        onShow={onShow}
        onHide={onHide}
        onEnter={handleEnter}
        onEntering={handleEntering}
        onEntered={onEntered}
        onExit={handleExit}
        onExiting={onExiting}
        onExited={handleExited}
        manager={getModalManager()}
        transition={animation ? DialogTransition : undefined}
        backdropTransition={animation ? BackdropTransition : undefined}
        renderBackdrop={renderBackdrop}
        renderDialog={renderDialog}
      />
    </ModalContext.Provider>
  );
});

Modal.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  style: PropTypes.object,
  dialogStyle: PropTypes.object,
  contentStyle: PropTypes.object,
  backdropStyle: PropTypes.object,
  zIndex: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),
  size: PropTypes.string,
  fullscreen: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),
  centered: PropTypes.bool,
  backdrop: PropTypes.oneOf(['static', true, false]),
  backdropClassName: PropTypes.string,
  keyboard: PropTypes.bool,
  scrollable: PropTypes.bool,
  animation: PropTypes.bool,
  dialogClassName: PropTypes.string,
  contentClassName: PropTypes.string,
  dialogAs: PropTypes.elementType,
  autoFocus: PropTypes.bool,
  enforceFocus: PropTypes.bool,
  restoreFocus: PropTypes.bool,
  restoreFocusOptions: PropTypes.shape({
    preventScroll: PropTypes.bool
  }),
  show: PropTypes.bool,
  onShow: PropTypes.func,
  onHide: PropTypes.func,
  onEscapeKeyDown: PropTypes.func,
  onEnter: PropTypes.func,
  onEntering: PropTypes.func,
  onEntered: PropTypes.func,
  onExit: PropTypes.func,
  onExiting: PropTypes.func,
  onExited: PropTypes.func,
  manager: PropTypes.object,
  container: PropTypes.any,
  'data-bs-theme': PropTypes.string,
  'aria-labelledby': PropTypes.string,
  'aria-describedby': PropTypes.string,
  'aria-label': PropTypes.string
};

export default Modal;
