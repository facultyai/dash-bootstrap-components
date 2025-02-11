import React, {useContext} from 'react';

import useMergedRefs from '@restart/hooks/useMergedRefs';
import DropdownContext from '@restart/ui/DropdownContext';
import {useDropdownToggle} from '@restart/ui/DropdownToggle';
import classNames from 'classnames';
import PropTypes from 'prop-types';
import Button from 'react-bootstrap/Button';
import InputGroupContext from 'react-bootstrap/InputGroupContext';
import useWrappedRefWithWarning from 'react-bootstrap/useWrappedRefWithWarning';

// vendored https://github.com/react-bootstrap/react-bootstrap/blob/master/src/DropdownToggle.tsx
const DropdownToggle = React.forwardRef(function DropdownToggle(
  {caret, split, className, as: Component = Button, ...props},
  ref
) {
  const dropdownContext = useContext(DropdownContext);
  const isInputGroup = useContext(InputGroupContext);

  const [toggleProps] = useDropdownToggle();

  toggleProps.ref = useMergedRefs(
    toggleProps.ref,
    useWrappedRefWithWarning(ref, 'DropdownToggle')
  );

  // This intentionally forwards size and variant (if set) to the
  // underlying component, to allow it to render size and style variants.
  return (
    <Component
      className={classNames(
        className,
        caret && 'dropdown-toggle', // remove dropdown-toggle class if caret is false
        split && 'dropdown-toggle-split',
        !!isInputGroup && dropdownContext?.show && 'show'
      )}
      {...toggleProps}
      {...props}
    />
  );
});

DropdownToggle.propTypes = {
  as: PropTypes.elementType,
  children: PropTypes.node,
  caret: PropTypes.bool,
  split: PropTypes.bool,
  className: PropTypes.string
};

export default DropdownToggle;
