'use strict';

var path = require('path');
var webpack = require('webpack');
var moduleDefinition = require('./moduleDefinition');
var directories = require('./directories');

var NODE_ENV = process.env.NODE_ENV || 'development';
var environment = JSON.stringify(NODE_ENV);

var LIBRARY_NAME = 'dash_bootstrap_components';
var BUILD_PATH = path.join(directories.ROOT, 'demo-lib');

var publicHost = process.env.DEMO_PUBLIC_HOST || undefined;

/* eslint-disable no-console */
console.log('Current environment: ' + environment);
console.log('Using public host: ' + publicHost || '<default>');
/* eslint-enable no-console */

module.exports = {
  cache: false,
  context: directories.SRC,
  mode: NODE_ENV,
  module: moduleDefinition,
  plugins: [
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: environment
      }
    })
  ],
  entry: {
    bundle: [path.join(directories.ROOT, 'demo/index.js')]
  },
  devServer: {
    public: publicHost,
    contentBase: 'demo'
  },
  output: {
    library: LIBRARY_NAME,
    libraryTarget: 'this', // Could be 'umd'
    path: BUILD_PATH,
    pathinfo: true,
    publicPath: '/demo-lib/', // For loading from webpack dev server
    filename: '[name].js'
  }
};
