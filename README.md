# Middleman Startaê

[![forthebadge](http://forthebadge.com/images/badges/fuck-it-ship-it.svg)](http://www.startae.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://www.startae.com)

**Features:**
* Ready to run on [Heroku](http://www.heroku.com)
* [Livereload](http://livereload.com): automatically refresh your browser whenever you edit files in your site.
* [Slim](http://slim-lang.com): A lightweight templating engine.
* [Bower](http://bower.io): A package manager for the web.
* [Sass](http://sass-lang.com): Sass: Syntactically Awesome Style Sheets
* [Inuitcss](https://github.com/inuitcss/getting-started): inuitcss is a powerful, Sass-based, BEM, OOCSS framework designed with scalability and performance in mind.
* [Bourbon](http://bourbon.io): A simple and lightweight mixin library for Sass.
* [Susy](http://susy.oddbird.net): Responsive layout toolkit for Sass.
* [Coffeescript](http://coffeescript.org)
* Language configuration
* Gzip
* Faker (Fake content generator with several helpers predefined)
* Preconfigured partials
* Metatags helper


## Installation

### Basic installation

Start by installing [Bundler](http://gembundler.com/), if you don't already have it:

```
gem install bundler
```

Then just clone the repository down to your local machine:

```
git clone http://github.com/startae/middleman-startae.git my_new_project
```

Finally, do a ```bundle install``` to install the required gems -- even Middleman itself!

Use ```middleman``` to do your live development and ```middleman build``` to render your static file output to the ```/build/``` directory.

For full Middleman documentation, visit the [Middleman website](http://middlemanapp.com/).

### Middleman Template

Middleman supports project templates. To use ```Middleman Startaê``` as a template, clone the Git repository into ```~/.middleman```, like so:

```
git clone git://github.com/startae/middleman-startae.git ~/.middleman/middleman-startae
```

then use the new template argument for the ```middleman init``` command:

```
middleman init my_new_project --template=middleman-startae
```

Use `bower install` to install the assets in the `bower_components/` directory (you'll need to have Bower package installed: `npm install -g bower`)

## Build & Dependency Status

[![Dependency Status](http://img.shields.io/gemnasium/startae/middleman-startae.svg?style=flat)](https://gemnasium.com/startae/middleman-startae)
[![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](/)


## Comments & Suggestions?

Just submit an [issue](https://github.com/startae/middleman-startae/issues).

For more help follow [Middleman's docs](https://middlemanapp.com/basics/install/).

[Middleman](http://middlemanapp.com/) is a static site generator based on Sinatra. Providing dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.

Cheers!
