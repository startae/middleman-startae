require 'rubygems'
require 'middleman'



# Slim HTML
########################################################
require "slim"
Slim::Engine.set_default_options format: :html5
Slim::Engine.set_default_options pretty: true
Slim::Engine.set_default_options tabsize: 2
Slim::Engine.set_default_options escape_quoted_attrs: true



# Livereload
########################################################
activate :livereload



# Compass
########################################################

# Susy grids in Compass
require 'susy'

# Compass configuration
compass_config do |config|
  config.output_style = :expanded
  config.preferred_syntax = :sass
end



# Page options, layouts, aliases and proxies
########################################################
Time.zone = "Brasilia"



# Helpers
########################################################

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# gzip
helpers do
  def gzip_css_on_build(key)
    o = stylesheet_link_tag(key)
    o.sub!(".css", ".css.gz") if build?
    o
  end

  def gzip_js_on_build(key)
    o = javascript_include_tag(key)
    o.sub!(".js", ".js.gz") if build?
    o
  end
end


# activate :directory_indexes
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'



# Build-specific configuration
configure :build do

  # Activate gzip
  activate :gzip

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end