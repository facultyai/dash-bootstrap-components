'use strict';

var path = require('path');
var webpack = require('webpack');
var moduleDefinition = require('./moduleDefinition');
var directories = require('./directories')

var OccurrenceOrderPlugin = require('webpack').optimize.OccurrenceOrderPlugin;

var NODE_ENV = process.env.NODE_ENV || 'development';
var environment = JSON.stringify(NODE_ENV);

var LIBRARY_NAME = 'dash-bootstrap-components';
var BUILD_PATH = path.join(directories.ROOT, LIBRARY_NAME, '_components');

/* eslint-disable no-console */
console.log('Current environment: ' + environment);
/* eslint-enable no-console */

module.exports = {
  cache: false,
  context: directories.SRC,
  mode: NODE_ENV,
  externals: [
    {
      react: {
        root: 'React',
        commonjs2: 'react',
        commonjs: 'react',
        amd: 'react'
      }
    },
    {
      'react-dom': {
        root: 'ReactDOM',
        commonjs2: 'react-dom',
        commonjs: 'react-dom',
        amd: 'react-dom'
      }
    }
  ],
  module: moduleDefinition,
  plugins: [new OccurrenceOrderPlugin(true)],
  optimization: {
    minimize: true
  },
  entry: {
    main: './index.js'
  },
  output: {
    library: LIBRARY_NAME,
    libraryTarget: 'umd',
    path: path.join(directories.ROOT, 'lib/'),
    filename: LIBRARY_NAME + '.min.js'
  }
};
