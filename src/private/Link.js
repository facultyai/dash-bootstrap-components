import React from 'react';

import PropTypes from 'prop-types';

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

const Link = React.forwardRef(function Link(
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
) {
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
});

Link.propTypes = {
  /**
   * The ID of the component
   */
  id: PropTypes.string,

  /**
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * Additional inline CSS styles to apply to the Link.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Link.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Link.
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
   * If True, clicking on the Link will behave like a hyperlink. If False, the Link will
   * behave like a dcc.Link component, and can be used in conjunction with dcc.Location
   * for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * Function to be executed on click before the redirect logic of Link.
   */
  preOnClick: PropTypes.func,

  target: PropTypes.string,

  linkTarget: PropTypes.string,

  download: PropTypes.string
};

export {Link as default, isExternalLink};
