import React from 'react';
import PropTypes from 'prop-types';
import {Toast, ToastBody, ToastHeader} from 'reactstrap';

class ToastSimple extends React.Component {
  constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
    this.state = {
      ToastOpen: props.is_open
    };
  }

  toggle() {
    if (this.props.setProps) {
      this.props.setProps({
        is_open: !this.state.ToastOpen,
        n_dismiss: this.props.n_dismiss + 1,
        n_dismiss_timestamp: Date.now()
      });
    } else {
      this.setState({ToastOpen: !this.state.ToastOpen});
    }
  }

  static getDerivedStateFromProps(nextProps, prevState) {
    if (nextProps.is_open != prevState.ToastOpen) {
      return {ToastOpen: nextProps.is_open};
    } else return null;
  }

  render() {
    const {
      children,
      header,
      icon,
      header_style,
      headerClassName,
      body_style,
      bodyClassName,
      dismissable,
      ...otherProps
    } = this.props;
    return (
      <Toast isOpen={this.state.ToastOpen} {...otherProps}>
        <ToastHeader
          icon={icon}
          style={header_style}
          className={headerClassName}
          toggle={dismissable && this.toggle}
        >
          {header}
        </ToastHeader>
        <ToastBody style={body_style} className={bodyClassName}>
          {children}
        </ToastBody>
      </Toast>
    );
  }
}

ToastSimple.defaultProps = {
  is_open: true
};

ToastSimple.propTypes = {
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
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the header of the toast.
   */
  header_style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties. The classes
   * specified with this prop will be applied to the header of the toast.
   */
  headerClassName: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the body of the toast.
   */
  body_style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties. The classes
   * specified with this prop will be applied to the body of the toast.
   */
  bodyClassName: PropTypes.string,

  /**
   * HTML tag to use for the Toast, default: div
   */
  tag: PropTypes.string,

  /**
   * Whether Toast is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Set to false for a Toast that simply appears rather than fades into view.
   */
  fade: PropTypes.bool,

  /**
   * Text to populate the header with
   */
  header: PropTypes.string,

  /**
   * Set to True to add a dismiss button to the header which will close the
   * toast on click
   */
  dismissable: PropTypes.bool,

  /**
   * An integer that represents the number of times that the dismiss button has
   * been clicked on.
   */
  n_dismiss: PropTypes.number,

  /**
   * Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
   * See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.
   *
   * An integer that represents the time (in ms since 1970) at which n_dismiss
   * changed. This can be used to tell which button was changed most recently.
   */
  n_dismiss_timestamp: PropTypes.number,

  /**
   * Add a contextually coloured icon to the header of the toast. Options are:
   * "primary", "secondary", "success", "warning", "danger", "info", "light" or
   * "dark".
   */
  icon: PropTypes.string
};

export default ToastSimple;
