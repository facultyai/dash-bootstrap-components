'use strict'

var path = require('path');

var ROOT = process.cwd();

module.exports = {
  ROOT: ROOT,
  SRC: path.join(ROOT, 'src'),
  DEMO: path.join(ROOT, 'demo'),
};
