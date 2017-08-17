# Middleman Startaê

[![forthebadge](http://forthebadge.com/images/badges/fuck-it-ship-it.svg)](http://www.startae.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://www.startae.com)

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/startae/middleman-startae/tree/master)
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/startae/middleman-startae)

**Features:**
* Ready to run on [Heroku](http://www.heroku.com) or [Netlify](http://www.netlify.com)
* [Livereload](http://livereload.com): automatically refresh your browser whenever you edit files in your site.
* [Slim](http://slim-lang.com): A lightweight templating engine.
* [Bower](http://bower.io): A package manager for the web.
* [Sass](http://sass-lang.com): Sass: Syntactically Awesome Style Sheets
* [Inuitcss](https://github.com/inuitcss/getting-started): inuitcss is a powerful, Sass-based, BEM, OOCSS framework designed with scalability and performance in mind.
* [Hagrid](https://github.com/fspoettel/hagrid): Simple but powerful flexbox-first grid
* [Coffeescript](http://coffeescript.org)
* Language configuration
* Gzip
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

Middleman supports project templates. To use ```Middleman Startaê``` as a template, just follow these steps:

First install the middleman gem, se you can use the middleman command:

```
gem install middleman
```

Now you just have to pass the `startae/middleman-startae` to the init command.

```
middleman init my_new_project --template=startae/middleman-startae
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
