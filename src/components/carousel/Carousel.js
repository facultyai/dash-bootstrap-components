import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCarousel from 'react-bootstrap/Carousel';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Carousel. for creating Bootstrap carousel.  This component is a slideshow
 * for cycling through a series of content.
 */
function Carousel({
  items,
  interval,
  style,
  class_name,
  active_index = 0,
  controls = true,
  indicators = true,
  className,
  setProps,
  ...otherProps
}) {
  const slides = items.map(item => {
    const useLink = item.href && true;
    const additionalProps = useLink
      ? {
          href: item.href,
          external_link: item.external_link,
          target: item.target || '_self'
        }
      : {};

    return (
      <RBCarousel.Item
        key={item.key}
        as={item.href ? Link : 'div'}
        {...additionalProps}
      >
        <img
          src={item.src}
          // the default 'd-block w-100' is from the examples in the Bootstrap docs.
          className={
            item.img_class_name || item.imgClassName || 'd-block w-100'
          }
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
        data-dash-is-loading={getLoadingState() || undefined}
        activeIndex={active_index}
        onSelect={idx => setProps({active_index: idx})}
        interval={interval || null}
        controls={controls}
        indicators={indicators}
        {...omit(
          ['persistence', 'persisted_props', 'persistence_type', 'setProps'],
          otherProps
        )}
      >
        {slides}
      </RBCarousel>
    </div>
  );
}

Carousel.dashPersistence = {
  persisted_props: ['active_index'],
  persistence_type: 'local'
};

Carousel.propTypes = {
  /**
   * The ID of the Carousel.
   */
  id: PropTypes.string,

  /**
   * The items to display on the slides in the Carousel.
   */
  items: PropTypes.arrayOf(
    PropTypes.exact({
      /**
       * The URL of the image
       */
      src: PropTypes.string,
      /**
       * The alternate text for an image, if the image cannot be displayed
       */
      alt: PropTypes.string,
      /**
       * The header of the text on the slide. It is displayed in a <h5> element
       */
      header: PropTypes.string,
      /**
       * A caption for the item.
       */
      caption: PropTypes.string,
      /**
       * Additional inline CSS styles for the image
       */
      img_style: PropTypes.object,
      /**
       * The className for the image.  The default is 'd-block w-100'
       */
      img_class_name: PropTypes.string,
      /**
       * The class name for the header and caption container
       */
      caption_class_name: PropTypes.string,
      /**
       * Optional hyperlink to add to the item. Item will be rendered as a HTML <a> or
       * as a Dash-style link depending on whether the link is deemed to be internal or
       * external. Override this automatic detection with the external_link argument.
       */
      href: PropTypes.string,
      /**
       * Optional target attribute for the link. Only applies if `href` is set, default
       * `_self`.
       */
      target: PropTypes.string,
      /**
       * If True, clicking on the item will behave like a hyperlink. If False, the item
       * will behave like a dcc.Link component, and can be used in conjunction with
       * dcc.Location for navigation within a Dash app.
       */
      external_link: PropTypes.bool,
      /**
       * A unique identifier for the slide, used to improve performance by React.js
       * while rendering components.
       *
       * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info.
       */
      key: PropTypes.string,
      /**
       * **DEPRECATED** Use `img_class_name` instead.
       *
       * The className for the image. The default is 'd-block w-100'
       */
      imgClassName: PropTypes.string,
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
   * The interval at which the Carousel automatically cycles through the slides. If
   * None, the Carousel will not automatically cycle.
   */
  interval: PropTypes.number,

  /**
   * Show the Carousel previous and next arrows for changing the current slide
   */
  controls: PropTypes.bool,

  /**
   * Show a set of slide position indicators
   */
  indicators: PropTypes.bool,

  /**
   * Defines CSS styles of the carousel container. Will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Defines the className of the carousel container. Additional CSS classes to apply to
   * the Carousel.
   */
  class_name: PropTypes.string,

  /**
   * Enables animation on the Carousel as it transitions between slides.
   */
  slide: PropTypes.bool,

  /**
   * Add `variant="dark"` to the Carousel for darker controls, indicators, and captions.
   */
  variant: PropTypes.oneOf(['dark']),

  /**
   * Used to allow user interactions to be persisted when the page is refreshed.
   * See https://dash.plotly.com/persistence for more details
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
   * - memory: only kept in memory, reset on page refresh.
   * - local: window.localStorage, data is kept after the browser quit.
   * - session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * efines the className of the carousel container. Additional CSS classes to apply to the Carousel.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Carousel;
