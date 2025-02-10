/* global window:true */
import PropTypes from 'prop-types';
import React, {Component} from 'react';

// absolute URL check vendored from is-absolute-url
// Scheme: https://tools.ietf.org/html/rfc3986#section-3.1
// Absolute URL: https://tools.ietf.org/html/rfc3986#section-4.3
const ABSOLUTE_URL_REGEX = /^[a-zA-Z][a-zA-Z\d+\-.]*?:/;

// Windows paths like `c:\`
const WINDOWS_PATH_REGEX = /^[a-zA-Z]:\\/;

function isAbsoluteUrl(url) {
  if (typeof url !== 'string') {
    throw new TypeError(`Expected a \`string\`, got \`${typeof url}\``);
  }

  if (WINDOWS_PATH_REGEX.test(url)) {
    return false;
  }

  return ABSOLUTE_URL_REGEX.test(url);
}

function isExternalLink(external_link, href) {
  if (typeof external_link === 'undefined' || external_link === null) {
    return isAbsoluteUrl(href);
  }
  return external_link;
}

const Link = React.forwardRef(
  (
    {
      children,
      preOnClick,
      target,
      linkTarget,
      href,
      download,
      external_link,
      disabled,
      ...otherProps
    },
    ref
  ) => {
    const updateLocation = e => {
      const hasModifiers = e.metaKey || e.shiftKey || e.altKey || e.ctrlKey;
      if (hasModifiers) {
        return;
      }
      if (disabled) {
        e.preventDefault();
        return;
      }
      if (preOnClick) {
        preOnClick();
      }
      if (href && !isExternalLink(external_link, href)) {
        // prevent anchor from updating location
        e.preventDefault();
        window.history.pushState({}, '', href);
        window.dispatchEvent(new CustomEvent('_dashprivate_pushstate'));
        // scroll back to top
        window.scrollTo(0, 0);
      }
    };

    const linkIsExternal = href && isExternalLink(external_link, href);
    /**
     * ideally, we would use cloneElement however
     * that doesn't work with dash's recursive
     * renderTree implementation for some reason
     */
    return (
      <a
        href={href}
        target={linkIsExternal ? target || linkTarget : undefined}
        download={download && linkIsExternal ? download : undefined}
        {...otherProps}
        onClick={e => updateLocation(e)}
        ref={ref}
      >
        {children}
      </a>
    );
  }
);

Link.propTypes = {
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
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * URL of the resource to link to
   */
  href: PropTypes.string,

  /**
   * If true, clicking on the link does nothing.
   */
  disabled: PropTypes.bool,

  /**
   * If true, the browser will treat this as an external link,
   * forcing a page refresh at the new location. If false,
   * this just changes the location without triggering a page
   * refresh. Use this if you are observing dcc.Location, for
   * instance. Defaults to true for absolute URLs and false
   * otherwise.
   */
  external_link: PropTypes.bool,

  /**
   * Function to be executed on click before the redirect logic of Link.
   */
  preOnClick: PropTypes.func,

  target: PropTypes.string,

  download: PropTypes.string
};

export {Link as default, isExternalLink};
