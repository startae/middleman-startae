## Middleman with Slim, Sass, Inuitcss, Bourbon, Susy, Bower and more.

This is a base [Middleman](http://middlemanapp.com) template application. This sets all of the defaults that I'll generally set when building a new application on Middleman. Be sure to read all of the documentation to become familiar with Middleman before using this base setup.

**Features:**
* Ready to run on [Heroku](http://www.heroku.com)
* [Livereload](http://livereload.com): automatically refresh your browser whenever you edit files in your site.
* [Slim](http://slim-lang.com): A lightweight templating engine.
* [Bower](http://bower.io): A package manager for the web.
* [Sass](http://sass-lang.com): Sass: Syntactically Awesome Style Sheets
* [Inuitcss](https://github.com/inuitcss/getting-started): jQuery is a fast, small, and feature-rich JavaScript library.
* [Bourbon](http://bourbon.io): A simple and lightweight mixin library for Sass.
* [Susy](http://susy.oddbird.net): Responsive layout toolkit for Sass.
* [Coffeescript](http://coffeescript.org)
* [jQuery](http://jquery.com): jQuery is a fast, small, and feature-rich JavaScript library.
* Language configuration
* Gzip
* Faker (Fake content generator with several helpers predefined)
* 404 Page configured
* Preconfigured partials
* Metatags helper


## Installation

### Instalation using Middleman v3+
1. Download or clone this repository to: `git clone git://github.com/startae/middleman-startae.git ~/.middleman/middleman-startae`
2. Create your new Middleman project with: `middleman init my_new_project --template=middleman-startae`
3. Use `bower install` to install the assets in the `bower_components/` directory (you'll need to have Bower npm package installed: `npm install -g bower`)

### Instalation using Middleman v4+
Simply run:
`middleman init my_new_project --template=startae/middleman-startae`


## Build & Dependency Status

[![Dependency Status](http://img.shields.io/gemnasium/startae/middleman-startae.svg?style=flat)](https://gemnasium.com/startae/middleman-startae)
[![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](/)


## Comments & Suggestions?

Just submit an [issue](https://github.com/startae/middleman-startae/issues). Cheers!


For more help follow [Middleman's project template instructions](http://middlemanapp.com/getting-started/welcome/).

[Middleman](http://middlemanapp.com/) is a static site generator based on Sinatra. Providing dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.
