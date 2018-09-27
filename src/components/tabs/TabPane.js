import PropTypes from 'prop-types';
import {TabPane as RSTabPane} from 'reactstrap';

const TabPane = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSTabPane {...otherProps}>
    {children}
  </RSTabPane>);
}

TabPane.propTypes = {
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
   * Tab ID is used to determine which tab to display.
   */
  tabId: PropTypes.string,

  /**
   * HTML tag to use for the TabOane, default: div.
   */
  tag: PropTypes.string
}

export default TabPane;
