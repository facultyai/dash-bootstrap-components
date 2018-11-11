'use strict';

var path = require('path');
var webpack = require('webpack');

var ROOT = process.cwd();
var SRC = path.join(ROOT, 'src');
var DEMO = path.join(ROOT, 'demo');

var NODE_ENV = process.env.NODE_ENV || 'development';
var environment = JSON.stringify(NODE_ENV);

var LIBRARY_NAME = 'dash_bootstrap_components';
var BUILD_PATH = path.join(ROOT, 'lib');

var publicHost = process.env.DEMO_PUBLIC_HOST || undefined;

/* eslint-disable no-console */
console.log('Current environment: ' + environment);
console.log('Using public host: ' + publicHost || '<default>');
/* eslint-enable no-console */

module.exports = {
  cache: false,
  context: SRC,
  mode: NODE_ENV,
  module: {
    noParse: /node_modules\/json-schema\/lib\/validate\.js/, // used to get `request` to work: https://github.com/request/request/issues/1920#issuecomment-171246043
    rules: [
      {
        test: /\.json$/,
        loader: 'json-loader'
      },
      {
        test: /\.jsx?$/,
        include: [SRC, DEMO],
        /*
         * Use require.resolve to get a deterministic path
         * and avoid webpack's magick loader resolution
         */
        use: [
          {
            loader: 'babel-loader'
          }
        ]
      },
      {
        test: /\.css$/,
        use: [{loader: 'style-loader'}, {loader: 'css-loader'}]
      }
    ]
  },
  plugins: [
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: environment
      }
    })
  ],
  entry: {
    bundle: [path.join(ROOT, 'demo/index.js')]
  },
  devServer: {
    public: publicHost,
  },
  output: {
    library: LIBRARY_NAME,
    libraryTarget: 'this', // Could be 'umd'
    path: BUILD_PATH,
    pathinfo: true,
    publicPath: '/lib/', // For loading from webpack dev server
    filename: '[name].js'
  }
};
