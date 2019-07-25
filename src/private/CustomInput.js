import React from 'react';
import PropTypes from 'prop-types';
import classNames from 'classnames';

const CustomInput = props => {
  const {
    className,
    label,
    inline,
    valid,
    invalid,
    children,
    bsSize,
    innerRef,
    htmlFor,
    labelStyle,
    labelClassName,
    ...attributes
  } = props;

  const type = attributes.type;

  const customClass = classNames(
    className,
    `custom-${type}`,
    bsSize ? `custom-${type}-${bsSize}` : false
  );

  const validationClassNames = classNames(
    invalid && 'is-invalid',
    valid && 'is-valid'
  );

  const labelHtmlFor = htmlFor || attributes.id;

  if (type === 'file') {
    return (
      <div className={customClass}>
        <input
          {...attributes}
          ref={innerRef}
          className={classNames(validationClassNames, 'custom-file-input')}
        />
        <label className="custom-file-label" htmlFor={labelHtmlFor}>
          {label || 'Choose file'}
        </label>
      </div>
    );
  }

  if (type !== 'checkbox' && type !== 'radio' && type !== 'switch') {
    return (
      <input {...attributes} ref={innerRef} className={validationClassNames} />
    );
  }

  const wrapperClasses = classNames(
    customClass,
    classNames('custom-control', {'custom-control-inline': inline})
  );

  return (
    <div className={wrapperClasses}>
      <input
        {...attributes}
        type={type === 'switch' ? 'checkbox' : type}
        ref={innerRef}
        className={classNames(validationClassNames, 'custom-control-input')}
      />
      <label
        className={classNames('custom-control-label', labelClassName)}
        style={labelStyle}
        htmlFor={labelHtmlFor}
      >
        {label}
      </label>
      {children}
    </div>
  );
};

CustomInput.propTypes = {
  className: PropTypes.string,
  id: PropTypes.oneOfType([PropTypes.string, PropTypes.number]).isRequired,
  type: PropTypes.string.isRequired,
  label: PropTypes.node,
  inline: PropTypes.bool,
  valid: PropTypes.bool,
  invalid: PropTypes.bool,
  bsSize: PropTypes.string,
  htmlFor: PropTypes.string,
  cssModule: PropTypes.object,
  children: PropTypes.oneOfType([
    PropTypes.node,
    PropTypes.array,
    PropTypes.func
  ]),
  innerRef: PropTypes.oneOfType([
    PropTypes.object,
    PropTypes.string,
    PropTypes.func
  ]),
  labelStyle: PropTypes.object,
  labelClassName: PropTypes.string
};

export default CustomInput;
