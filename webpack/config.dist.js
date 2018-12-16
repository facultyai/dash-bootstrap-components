'use strict';

var path = require('path');
var webpack = require('webpack');
var moduleDefinition = require('./moduleDefinition');
var directories = require('./directories');

var OccurrenceOrderPlugin = require('webpack').optimize.OccurrenceOrderPlugin;

var NODE_ENV = process.env.NODE_ENV || 'development';
var environment = JSON.stringify(NODE_ENV);

var LIBRARY_NAME = 'dash_bootstrap_components';
var BUILD_PATH = path.join(directories.ROOT, LIBRARY_NAME, '_components');

/* eslint-disable no-console */
console.log('Current environment: ' + environment);
/* eslint-enable no-console */

module.exports = {
  cache: false,
  context: directories.SRC,
  mode: NODE_ENV,
  externals: {
    react: 'React',
    'react-dom': 'ReactDOM',
  },
  module: moduleDefinition,
  plugins: [new OccurrenceOrderPlugin(true)],
  optimization: {
    minimize: true
  },
  entry: {
    main: './index.js'
  },
  output: {
    library: LIBRARY_NAME + '/_components',
    libraryTarget: 'window',
    path: BUILD_PATH,
    filename: LIBRARY_NAME + '.min.js'
  }
};
