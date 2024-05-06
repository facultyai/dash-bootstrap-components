// vendored from React-Bootstrap to allow us to set content style
// https://github.com/react-bootstrap/react-bootstrap/blob/be23c304fa40ddb209919b0faac1e5dd8cef53ad/src/ModalDialog.tsx
import React from 'react';

import classNames from 'classnames';
import {useBootstrapPrefix} from 'react-bootstrap/ThemeProvider';

const ModalDialog = React.forwardRef(
  (
    {
      bsPrefix,
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
  ) => {
    bsPrefix = useBootstrapPrefix(bsPrefix, 'modal');
    const dialogClass = `${bsPrefix}-dialog`;

    const fullScreenClass =
      typeof fullscreen === 'string'
        ? `${bsPrefix}-fullscreen-${fullscreen}`
        : `${bsPrefix}-fullscreen`;

    return (
      <div
        {...props}
        ref={ref}
        className={classNames(
          dialogClass,
          className,
          size && `${bsPrefix}-${size}`,
          centered && `${dialogClass}-centered`,
          scrollable && `${dialogClass}-scrollable`,
          fullscreen && fullScreenClass
        )}
      >
        <div
          className={classNames(`${bsPrefix}-content`, contentClassName)}
          style={contentStyle}
        >
          {children}
        </div>
      </div>
    );
  }
);

export default ModalDialog;
