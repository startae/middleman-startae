/* globals __dirname */
var webpack = require('webpack')
var ExtractTextPlugin = require('extract-text-webpack-plugin')
var Clean = require('clean-webpack-plugin')

module.exports = {
  entry: {
    application: './source/assets/javascripts/application.js'
  },

  resolve: {
    modules: [
      __dirname + '/source/assets/javascripts',
      __dirname + '/source/assets/stylesheets',
      __dirname + '/node_modules',
    ]
  },

  output: {
    path: __dirname + '/.tmp/dist',
    filename: 'assets/javascripts/[name].bundle.js',
  },

  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader'
      },
      {
        test: /\.css$/,
        loader: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: [
            'css-loader',
            {
              loader: 'postcss-loader',
              options: {
                plugins: function () {
                  return [
                    require('autoprefixer')
                  ]
                }
              }
            }
          ]}),
      },
      {
        test: /\.(sass|scss)$/,
        loader: ExtractTextPlugin.extract({
          fallback: 'style-loader',
          use: [
            'css-loader',
            {
              loader: 'postcss-loader',
              options: {
                plugins: function () {
                  return [
                    require('autoprefixer')
                  ]
                }
              }
            },
            'sass-loader'
          ]
        }),
      }
    ]
  },

  plugins: [
    // Always expose NODE_ENV to webpack, in order to use `process.env.NODE_ENV`
    // inside your code for any environment checks UglifyJS will automatically
    // drop any unreachable code.
    new webpack.DefinePlugin({
      'process.env': {
        NODE_ENV: JSON.stringify(process.env.NODE_ENV),
      },
    }),
    new Clean(['.tmp']),
    new ExtractTextPlugin('assets/stylesheets/[name].bundle.css'),
  ],
}
