import React, {useEffect} from 'react';
import Prism from 'prismjs';
import PropTypes from 'prop-types';

const SyntaxHighlighter = props => {
  useEffect(Prism.highlightAll, [props.language, props.code]);
  return (
    <pre>
      <code className={`language-${props.language}`}>{props.code}</code>
    </pre>
  );
};

SyntaxHighlighter.defaultProps = {
  language: 'python'
};

SyntaxHighlighter.propTypes = {
  /**
   * The ID used to identify this component in Dash callbacks.
   */
  id: PropTypes.string,

  /**
   * Specify which language is being highlighted
   */
  language: PropTypes.string,

  /**
   * The code to highlight
   */
  code: PropTypes.string,

  /**
   * Dash-assigned callback that should be called to report property changes
   * to Dash, to make them available for callbacks.
   */
  setProps: PropTypes.func
};

export default SyntaxHighlighter;
