# Middleman Startaê

[![forthebadge](http://forthebadge.com/images/badges/fuck-it-ship-it.svg)](http://www.startae.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://www.startae.com)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/startae/middleman-startae/tree/master)
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/startae/middleman-startae)

## Key Features

* Middleman v4
* Ready to run on [Heroku](http://www.heroku.com) or [Netlify](http://www.netlify.com)
* [Livereload](http://livereload.com): automatically refresh your browser whenever you edit files
* [Slim](http://slim-lang.com): A lightweight templating engine
* [Webpack](https://webpack.js.org/): A module bundler for modern JavaScript applications
* [Sass](http://sass-lang.com): Syntactically Awesome Style Sheets
* [ITCSS](http://csswizardry.net/talks/2014/11/itcss-dafed.pdf): A sane, scalable and managed CSS architecture
* [PostCSS](http://postcss.org/): A tool for transforming CSS with JavaScript
* [Reset CSS](http://meyerweb.com/eric/tools/css/reset/): a reset stylesheet to reduce browser inconsistencies
* [itcsscli](http://itcsscli.github.io/itcsscli.com/): a tool for managing the ITCSS structure
* [Hagrid](https://github.com/fspoettel/hagrid): Simple but powerful flexbox-first grid
* [Babel](https://babeljs.io/): The compiler for writing next generation Javascript
* Language configuration
* Gzip
* Preconfigured partials
* Metatags helper

## Installation

### Basic installation

First, just clone the repository down to your local machine:

```
git clone http://github.com/startae/middleman-startae.git my_new_project
```

Install the JS dependencies by running:

```
yarn install
```

Install [Bundler](http://gembundler.com/), if you don't already have it:

```
gem install bundler
```

Finally, install the required gems with:

```
bundle install
```

### Running the app

Use the command ```middleman``` to do your local live development or ```middleman build``` to render your static file output to the ```/build/``` directory.

For the full Middleman documentation, visit the [Middleman website](http://middlemanapp.com/).

### Middleman Template

Middleman supports project templates. To use ```Middleman Startaê``` as a template, just follow these steps:

First install the middleman gem, so you can use the middleman command:

```
gem install middleman
```

Now you just have to pass the `startae/middleman-startae` to the init command.

```
middleman init my_new_project --template=startae/middleman-startae
```

## Build & Dependency Status

[![Dependency Status](http://img.shields.io/gemnasium/startae/middleman-startae.svg?style=flat)](https://gemnasium.com/startae/middleman-startae)
[![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](/)


## Comments & Suggestions?

Just submit an [issue](https://github.com/startae/middleman-startae/issues).

For more help follow [Middleman's docs](https://middlemanapp.com/basics/install/).

[Middleman](http://middlemanapp.com/) is a static site generator based on Sinatra. Providing dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.

Built with love by [Startaê](https://startae.com/).
