// vendored from React-Bootstrap to allow us to set content style
// https://github.com/react-bootstrap/react-bootstrap/blob/be23c304fa40ddb209919b0faac1e5dd8cef53ad/src/ModalDialog.tsx
import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';

const ModalDialog = React.forwardRef(function ModalDialog(
  {
    className,
    contentClassName,
    centered,
    size,
    fullscreen,
    children,
    scrollable,
    contentStyle,
    ...props
  },
  ref
) {
  const dialogClass = 'modal-dialog';

  const fullScreenClass =
    typeof fullscreen === 'string'
      ? `modal-fullscreen-${fullscreen}`
      : 'modal-fullscreen';

  return (
    <div
      {...props}
      ref={ref}
      className={classNames(
        dialogClass,
        className,
        size && `modal-${size}`,
        centered && `${dialogClass}-centered`,
        scrollable && `${dialogClass}-scrollable`,
        fullscreen && fullScreenClass
      )}
    >
      <div
        className={classNames('modal-content', contentClassName)}
        style={contentStyle}
      >
        {children}
      </div>
    </div>
  );
});

ModalDialog.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string,
  contentClassName: PropTypes.string,
  centered: PropTypes.bool,
  size: PropTypes.oneOf(['xs', 'sm', 'md', 'lg', 'xl']),
  fullscreen: PropTypes.oneOf([
    true,
    'sm-down',
    'md-down',
    'lg-down',
    'xl-down'
  ]),
  scrollable: PropTypes.bool,
  contentStyle: PropTypes.object
};

export default ModalDialog;
