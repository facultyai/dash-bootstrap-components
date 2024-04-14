import React, {useContext} from 'react';
import classNames from 'classnames';
import PopoverBody from 'react-bootstrap/PopoverBody';
import {OverlayContext} from './Overlay';

// Convert from left/right to start/end
const getOverlayDirection = placement => {
  let bsDirection = placement;
  if (placement === 'left') {
    bsDirection = 'start';
  } else if (placement === 'right') {
    bsDirection = 'end';
  }
  return bsDirection;
};

// Taken from the react-bootstrap Popover component - required as need to
// include the ability to hide the arrow which we don't have control of outside
// this component
const PopoverTemplate = React.forwardRef(
  (
    {
      placement,
      className,
      style,
      children,
      body,
      arrowProps,
      popper: _,
      show: _1,
      hideArrow,
      ...props
    },
    ref
  ) => {
    // Identify the direction and placement
    const [primaryPlacement] = placement?.split('-') || [];
    const bsDirection = getOverlayDirection(primaryPlacement);
    const {
      handleMouseOverTooltipContent,
      handleMouseLeaveTooltipContent
    } = useContext(OverlayContext);

    return (
      <div
        ref={ref}
        role="tooltip"
        style={style}
        x-placement={primaryPlacement}
        className={classNames(
          className,
          'popover',
          primaryPlacement && `bs-popover-${bsDirection}`
        )}
        onMouseOver={handleMouseOverTooltipContent}
        onMouseLeave={handleMouseLeaveTooltipContent}
        {...props}
      >
        {!hideArrow && <div className="popover-arrow" {...arrowProps} />}
        {body ? <PopoverBody>{children}</PopoverBody> : children}
      </div>
    );
  }
);

const TooltipTemplate = React.forwardRef(
  (
    {
      bsPrefix,
      placement,
      className,
      style,
      children,
      arrowProps,
      popper,
      show,
      hasDoneInitialMeasure,
      ...props
    },
    ref
  ) => {
    const [primaryPlacement] = placement?.split('-') || [];
    const bsDirection = getOverlayDirection(primaryPlacement);

    const computedStyle = style;
    if (show && !hasDoneInitialMeasure)
      computedStyle = {
        ...style,
        position: popper?.strategy,
        top: '0',
        left: '0',
        opacity: '0',
        pointerEvents: 'none'
      };

    const {
      handleMouseOverTooltipContent,
      handleMouseLeaveTooltipContent
    } = useContext(OverlayContext);

    return (
      <div
        ref={ref}
        style={computedStyle}
        role="tooltip"
        x-placement={primaryPlacement}
        className={classNames(
          className,
          'tooltip',
          `bs-tooltip-${bsDirection}`
        )}
        onMouseOver={handleMouseOverTooltipContent}
        onMouseLeave={handleMouseLeaveTooltipContent}
        {...props}
      >
        <div className="tooltip-arrow" {...arrowProps} />
        <div className={'tooltip-inner'}>{children}</div>
      </div>
    );
  }
);

export {PopoverTemplate, TooltipTemplate};
