var webpack = require('webpack');

module.exports = {
    entry: {
        application: './source/assets/javascripts/application.js'
    },

    output: {
        path: __dirname + '/.tmp/dist',
        filename: 'javascripts/[name].js',
    },

    module: {
        rules: [{
            test: /source\/javascripts\/.*\.js$/,
            exclude: /node_modules|\.tmp|vendor/,
            loader: "babel-loader",
            query: {
                presets: ['es2015']
            }
        }]
    },

    devtool: 'source-map'
};
