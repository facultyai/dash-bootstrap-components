import PropTypes from 'prop-types';

const stringOrNumberPropType = PropTypes.oneOfType([
  PropTypes.number,
  PropTypes.string
]);

const columnPropType = PropTypes.oneOfType([
  PropTypes.bool,
  PropTypes.string,
  PropTypes.number,
  PropTypes.shape({
    size: PropTypes.oneOfType([
      PropTypes.bool,
      PropTypes.number,
      PropTypes.string
    ]),
    order: stringOrNumberPropType,
    offset: stringOrNumberPropType
  })
]);

export {columnPropType};
