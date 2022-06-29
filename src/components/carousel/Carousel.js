import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';

import RBCarousel from 'react-bootstrap/Carousel';

/**
 * Component for creating Bootstrap carousel.  This component is a slideshow
 * for cycling through a series of content.
 */
const Carousel = props => {
  const {
    items,
    active_index,
    style,
    class_name,
    className,
    loading_state,
    setProps,
    interval,
    ...otherProps
  } = props;

  const slides = items.map(item => {
    // note - the default 'd-block w-100' is from the examples in the Bootstrap docs.
    item.imgClassName =
      typeof item.imgClassName !== 'undefined'
        ? item.imgClassName
        : 'd-block w-100';

    return (
      <RBCarousel.Item key={item.key}>
        <img
          src={item.src}
          className={item.img_class_name || item.imgClassName}
          style={item.img_style}
          alt={item.alt}
        />
        <RBCarousel.Caption
          className={item.caption_class_name || item.captionClassName}
        >
          {item.header && <h5>{item.header}</h5>}
          {item.caption && <p>{item.caption}</p>}
        </RBCarousel.Caption>
      </RBCarousel.Item>
    );
  });

  return (
    <div style={style} className={class_name || className}>
      <RBCarousel
        data-dash-is-loading={
          (loading_state && loading_state.is_loading) || undefined
        }
        activeIndex={active_index}
        onSelect={idx => setProps({active_index: idx})}
        interval={interval || null}
        {...omit(
          ['persistence', 'persisted_props', 'persistence_type', 'setProps'],
          otherProps
        )}
      >
        {slides}
      </RBCarousel>
    </div>
  );
};

Carousel.defaultProps = {
  active_index: 0,
  controls: true,
  indicators: true,
  persisted_props: ['active_index'],
  persistence_type: 'local'
};

Carousel.propTypes = {
  /**
   * The ID of the component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * Defines CSS styles of the carousel container. Will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Defines the className of the carousel container. Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * efines the className of the carousel container. Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * The items to display on the slides in the carousel
   */
  items: PropTypes.arrayOf(
    PropTypes.exact({
      /**
       * A unique identifier for the slide, used to improve performance by React.js while rendering components
       * See https://reactjs.org/docs/lists-and-keys.html for more info.
       */
      key: PropTypes.string,
      /**
       * The URL of the image
       */
      src: PropTypes.string,
      /**
       * The alternate text for an image, if the image cannot be displayed
       */
      alt: PropTypes.string,
      /**
       * The className for the image.  The default is 'd-block w-100'
       */
      img_class_name: PropTypes.string,
      /**
       * **DEPRECATED** Use `img_class_name` instead.
       *
       * The className for the image.  The default is 'd-block w-100'
       */
      imgClassName: PropTypes.string,
      /**
       * The style for the image
       */
      img_style: PropTypes.object,
      /**
       * The header of the text on the slide. It is displayed in a <h5> element
       */
      header: PropTypes.string,
      /**
       * The caption of the item.  The text is displayed in a <p> element
       */
      caption: PropTypes.string,
      /**
       * The class name for the header and caption container
       */
      caption_class_name: PropTypes.string,
      /**
       * **DEPRECATED** Use `caption_class_name` instead.
       *
       * The class name for the header and caption container
       */
      captionClassName: PropTypes.string
    })
  ).isRequired,

  /**
   * The current visible slide number
   */
  active_index: PropTypes.number,

  /**
   * Show the Carousel previous and next arrows for changing the current slide
   */
  controls: PropTypes.bool,

  /**
   * Show a set of slide position indicators
   */
  indicators: PropTypes.bool,

  /**
   * Autoplays the carousel after the user manually cycles the first item. If "carousel", autoplays the carousel on load.
   */
  ride: PropTypes.oneOf(['carousel']),

  /**
   * controls whether the slide animation on the Carousel works or not
   */
  slide: PropTypes.bool,

  /**
   * Add `variant="dark"` to the Carousel for darker controls, indicators, and
   * captions.
   */
  variant: PropTypes.oneOf(['dark']),

  /**
   *the interval at which the carousel automatically cycles (default: 5000)
   * If set to None, carousel will not Autoplay (i.e. will not automatically cycle).
   */
  interval: PropTypes.number,

  /**
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  }),

  /**
   * Used to allow user interactions in this component to be persisted when
   * the component - or the page - is refreshed. If `persisted` is truthy and
   * hasn't changed from its previous value, a `value` that the user has
   * changed while using the app will keep that change, as long as
   * the new `value` also matches what was given originally.
   * Used in conjunction with `persistence_type`.
   */
  persistence: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.string,
    PropTypes.number
  ]),

  /**
   * Properties whose user interactions will persist after refreshing the
   * component or the page. Since only `value` is allowed this prop can
   * normally be ignored.
   */
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['active_index'])),

  /**
   * Where persisted user changes will be stored:
   * memory: only kept in memory, reset on page refresh.
   * local: window.localStorage, data is kept after the browser quit.
   * session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Carousel;
