import React, {createContext, useEffect, useRef, useState} from 'react';

import PropTypes from 'prop-types';
import RBOverlay from 'react-bootstrap/Overlay';

const OverlayContext = createContext({});

function isInDOMSubtree(element, subtreeRoot) {
  return (
    subtreeRoot && (element === subtreeRoot || subtreeRoot.contains(element))
  );
}

function useStateRef(initialValue) {
  const [value, setValue] = useState(initialValue);
  const ref = useRef(value);

  useEffect(() => {
    ref.current = value;
  }, [value]);

  return [value, setValue, ref];
}

// stringifies object ids used in pattern matching callbacks
function stringifyId(id) {
  if (typeof id !== 'object') {
    return id;
  }
  const stringifyVal = v => (v && v.wild) || JSON.stringify(v);
  const parts = Object.keys(id)
    .sort()
    .map(k => JSON.stringify(k) + ':' + stringifyVal(id[k]));
  return '{' + parts.join(',') + '}';
}

function Overlay({
  children,
  target,
  delay,
  trigger,
  defaultShow,
  setProps,
  autohide,
  ...otherProps
}) {
  // isOpen should be false initially, even if defaultShow is true
  // so that we can find the target in the DOM before rendering the
  // overlay
  const [isOpen, setIsOpen, isOpenRef] = useStateRef(false);

  const targetRef = useRef(null);
  const hideTimeout = useRef(null);
  const showTimeout = useRef(null);
  const isMountedRef = useRef(false);
  // TODO: we use this as a guard to make sure we don't call setProps if the component
  // has unmounted. cancelling the timeouts directly would be neater but I haven't been
  // able to make it work.
  useEffect(() => {
    isMountedRef.current = true;
    return () => {
      isMountedRef.current = false;
    };
  });

  // Triggers can be passed using space separated values
  const triggers = typeof trigger === 'string' ? trigger.split(' ') : [];

  const targetStr = stringifyId(target);

  const [rootClose, setRootClose] = useState(false);

  // Function to hide if currently open, and set the props
  const hide = () => {
    if (isOpenRef.current) {
      hideTimeout.current = clearTimeout(hideTimeout.current);
      setIsOpen(false);
      if (setProps && isMountedRef.current) {
        setProps({is_open: false});
      }
    }
  };
  // Function to create the delay for hiding if currently open
  const hideWithDelay = () => {
    if (!isOpenRef.current && showTimeout.current) {
      showTimeout.current = clearTimeout(showTimeout.current);
      hide();
    } else if (isOpenRef.current) {
      clearTimeout(hideTimeout.current);
      hideTimeout.current = setTimeout(hide, delay.hide);
    }
  };

  // Function to show if currently closed, and set the props
  const show = () => {
    if (!isOpenRef.current) {
      showTimeout.current = clearTimeout(showTimeout.current);
      setIsOpen(true);
      if (setProps && isMountedRef.current) {
        setProps({is_open: true});
      }
    }
  };
  // Function to create the delay for showing, if currently closed
  const showWithDelay = () => {
    if (isOpenRef.current && hideTimeout.current) {
      hideTimeout.current = clearTimeout(hideTimeout.current);
      show();
    } else if (!isOpenRef.current) {
      clearTimeout(showTimeout.current);
      showTimeout.current = setTimeout(show, delay.show);
    }
  };

  // If there is a click on the document
  const handleClick = e => {
    if (
      // If the click was the target
      isInDOMSubtree(e.target, targetRef.current)
    ) {
      // Allow a slight delay
      if (hideTimeout.current) {
        hideTimeout.current = clearTimeout(hideTimeout.current);
      }
      // Determine whether it should be hidden or shown
      if (!isOpenRef.current) {
        showWithDelay();
      } else {
        hideWithDelay();
      }
    }
  };

  const handleMouseOverTooltipContent = () => {
    if (triggers.indexOf('hover') > -1 && !autohide) {
      if (hideTimeout.current) {
        hideTimeout.current = clearTimeout(hideTimeout.current);
      }
      show();
    }
  };

  const handleMouseLeaveTooltipContent = e => {
    if (triggers.indexOf('hover') > -1 && !autohide) {
      if (showTimeout.current) {
        showTimeout.current = clearTimeout(showTimeout.current);
      }
      e.persist();
      hideWithDelay();
    }
  };

  // Add event listeners
  const addEventListeners = t => {
    if (t) {
      // Hover event trigger (mouse over and mouse out)
      if (triggers.indexOf('hover') > -1) {
        t.addEventListener('mouseover', showWithDelay, true);
        t.addEventListener('mouseout', hideWithDelay, true);
      }
      // Focus event trigger
      if (triggers.indexOf('focus') > -1) {
        t.addEventListener('focusin', showWithDelay, true);
        t.addEventListener('focusout', hideWithDelay, true);
      }
      // Click or Legacy event trigger
      if (triggers.indexOf('click') > -1 || triggers.indexOf('legacy') > -1) {
        document.addEventListener('click', handleClick, true);
      }
      // Pressing the escape key hides its
      t.addEventListener('keydown', e => {
        if (e.key === 'Escape') hide();
      });
    }
  };

  // Update the isOpen state, when defaultShow changes
  useEffect(() => {
    setTimeout(() => setIsOpen(defaultShow), 50);
  }, [defaultShow]);

  // If legacy is a trigger, then need to set root close to true to allow
  // close when clicking outside the component
  useEffect(() => {
    if (triggers.indexOf('legacy') > -1) {
      setRootClose(true);
    } else {
      setRootClose(false);
    }
  }, [triggers]);

  // Wait function - create a delay
  const wait = ms => new Promise(res => setTimeout(res, ms));

  // Identify what the target element is
  const getTarget = async (target, depth = 0) => {
    // See if it can be found
    const targetRef = document.getElementById(target);
    if (targetRef === null && depth < 4) {
      // If it can't be found, and less than 3 attempts have been made
      // wait a bit (i.e. wait for the DOM to render it)
      await wait(2 ** depth * 100);
      // Try to find the target again
      return getTarget(target, depth + 1);
    }
    // Once the target is found, return its reference
    return targetRef;
  };

  // When the target changes, update the event listeners
  useEffect(() => {
    // Create the function to attach the event listeners
    const attachListenersToTarget = async () => {
      targetRef.current = await getTarget(targetStr);
      addEventListeners(targetRef.current);
    };
    attachListenersToTarget();
  }, [targetStr]);

  return (
    <OverlayContext.Provider
      value={{handleMouseOverTooltipContent, handleMouseLeaveTooltipContent}}
    >
      <RBOverlay
        show={isOpen}
        rootClose={rootClose} // Close when clicking outside the icon
        // Must be defined when using rootClose
        // need to make sure that props stay in sync
        onHide={() => {
          setIsOpen(false);
          if (setProps && isMountedRef.current) {
            setProps({is_open: false});
          }
        }}
        target={targetRef.current}
        {...otherProps}
      >
        {children}
      </RBOverlay>
    </OverlayContext.Provider>
  );
}

Overlay.propTypes = {
  children: PropTypes.node,
  target: PropTypes.oneOfType([PropTypes.string, PropTypes.object]),
  delay: PropTypes.exact({
    show: PropTypes.number,
    hide: PropTypes.number
  }),
  trigger: PropTypes.string,
  defaultShow: PropTypes.bool,
  setProps: PropTypes.func,
  autohide: PropTypes.bool
};

export default Overlay;
export {OverlayContext};
