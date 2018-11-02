import PropTypes from 'prop-types';
import classNames from 'classnames';
import InputGroupText from './InputGroupText';

const InputGroupAddon = props => {
  const {children, className, addon_type, ...otherProps} = props;
  const classes = classNames(className, 'input-group-' + addon_type);

  if (typeof children === 'string') {
    return (
      <div className={classes} {...otherProps}>
        <InputGroupText children={children} />
      </div>
    );
  }

  return (
    <div className={classes} {...otherProps}>
      {children}
    </div>
  );
};

InputGroupAddon.propTypes = {
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
  className: PropTypes.string,

  /**
   * Whether to prepend or append the addon.
   */
  addon_type: PropTypes.oneOf(['prepend', 'append'])
};

export default InputGroupAddon;
