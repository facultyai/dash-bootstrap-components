import React, {useEffect, useRef, useState} from 'react';
import RBOverlay from 'react-bootstrap/Overlay';

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
const stringifyId = id => {
  if (typeof id !== 'object') {
    return id;
  }
  const stringifyVal = v => (v && v.wild) || JSON.stringify(v);
  const parts = Object.keys(id)
    .sort()
    .map(k => JSON.stringify(k) + ':' + stringifyVal(id[k]));
  return '{' + parts.join(',') + '}';
};

const Overlay = ({
  children,
  target,
  delay,
  trigger,
  defaultShow,
  setProps,
  ...otherProps
}) => {
  // isOpen should be false initially, even if defaultShow is true
  // so that we can find the target in the DOM before rendering the
  // overlay
  const [isOpen, setIsOpen, isOpenRef] = useStateRef(false);

  const overlayRef = useRef(null);
  const targetRef = useRef(null);
  const hideTimeout = useRef(null);
  const showTimeout = useRef(null);

  const triggers = typeof trigger === 'string' ? trigger.split(' ') : [];

  const targetStr = stringifyId(target);

  const hide = () => {
    if (isOpenRef.current) {
      hideTimeout.current = clearTimeout(hideTimeout.current);
      setIsOpen(false);
      if (setProps) {
        setProps({is_open: false});
      }
    }
  };
  const hideWithDelay = () => {
    if (isOpenRef.current) {
      clearTimeout(hideTimeout.current);
      hideTimeout.current = setTimeout(hide, delay.hide);
    }
  };

  const show = () => {
    if (!isOpenRef.current) {
      showTimeout.current = clearTimeout(showTimeout.current);
      setIsOpen(true);
      if (setProps) {
        setProps({is_open: true});
      }
    }
  };
  const showWithDelay = () => {
    if (!isOpenRef.current) {
      clearTimeout(showTimeout.current);
      showTimeout.current = setTimeout(show, delay.show);
    }
  };

  const handleClick = e => {
    if (
      triggers.indexOf('legacy') > -1 &&
      (isOpenRef.current || isInDOMSubtree(e.target, targetRef.current))
    ) {
      if (hideTimeout.current) {
        hideTimeout.current = clearTimeout(hideTimeout.current);
      }
      if (isOpenRef.current && !isInDOMSubtree(e.target, overlayRef.current)) {
        hideWithDelay();
      } else if (!isOpenRef.current) {
        showWithDelay();
      }
    } else if (
      triggers.indexOf('click') > -1 &&
      isInDOMSubtree(e.target, targetRef.current)
    ) {
      if (hideTimeout.current) {
        hideTimeout.current = clearTimeout(hideTimeout.current);
      }

      if (!isOpenRef.current) {
        showWithDelay();
      } else {
        hideWithDelay();
      }
    }
  };

  const addEventListeners = t => {
    if (t) {
      if (triggers.indexOf('hover') > -1) {
        t.addEventListener('mouseover', showWithDelay, true);
        t.addEventListener('mouseout', hideWithDelay, true);
      }
      if (triggers.indexOf('focus') > -1) {
        t.addEventListener('focusin', show, true);
        t.addEventListener('focusout', hide, true);
      }
      if (triggers.indexOf('click') > -1 || triggers.indexOf('legacy') > -1) {
        document.addEventListener('click', handleClick, true);
      }
      t.addEventListener('keydown', e => {
        if (e.key === 'Escape') hide();
      });
    }
  };

  useEffect(() => {
    if (!overlayRef.current) {
      let container = document.querySelector('footer');
      if (!container) {
        container = document.createElement('footer');
        document.body.append(container);
      }
      overlayRef.current = container;
    }
    setIsOpen(defaultShow);
  }, [defaultShow]);

  useEffect(() => {
    targetRef.current = document.getElementById(targetStr);
    addEventListeners(targetRef.current);
  }, [targetStr]);

  return (
    <RBOverlay show={isOpen} target={targetRef.current} {...otherProps}>
      {children}
    </RBOverlay>
  );
};

export default Overlay;
