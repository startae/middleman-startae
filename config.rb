# View Middleman configurations:
# http://localhost:4567/__middleman/config/


# Site Settings
# ----------------------------------------------
@google_analytics = ''


# Slim HTML
# ----------------------------------------------
::Slim::Engine.set_default_options :format  => :html5
::Slim::Engine.set_default_options lang: I18n.locale, locals: {}


# i18n
# ----------------------------------------------
activate :i18n, :mount_at_root => :'pt-BR'


# Livereload
# Reload the browser automatically whenever files change
# ----------------------------------------------
# configure :development do
#   activate :livereload, :no_swf => true
# end


# Page options, layouts, aliases and proxies
# ----------------------------------------------

# Per-page layout changes:
#
# With no layout
page '/*.xml',   layout: false
page '/*.json',  layout: false
page '/*.txt',   layout: false


# Bower Config
# ----------------------------------------------
# after_configuration do
#   @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
#   @bower_assets_path = File.join "#{root}", @bower_config["directory"]
#   sprockets.append_path @bower_assets_path
# end


# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes


# Configure assets directories
# ----------------------------------------------
set :css_dir,     "assets/stylesheets"
set :js_dir,      "assets/javascripts"
set :images_dir,  "assets/images"
set :fonts_dir,   "assets/images"


# Other configurations
# ----------------------------------------------
set :trailing_slash, false


# Development-specific configuration
# ----------------------------------------------
configure :development do
  activate :directory_indexes
  set :debug_assets, true
  ::Slim::Engine.set_default_options :pretty => true
end


# Build-specific configuration
# ----------------------------------------------
configure :build do
  # Use relative URLs
  activate :directory_indexes

  # Activate gzip
  activate :gzip

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash

  # Compress PNGs after build (First: gem install middleman-smusher)
  # require "middleman-smusher"
  # activate :smusher
end
