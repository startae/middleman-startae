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
configure :development do
  activate :livereload, :no_swf => true
end


# Page options, layouts, aliases and proxies
# ----------------------------------------------


# Bower Config
# ----------------------------------------------
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  @bower_assets_path = File.join "#{root}", @bower_config["directory"]
  sprockets.append_path @bower_assets_path
end


# Configure assets directories
# ----------------------------------------------
config[:css_dir] = 'assets/stylesheets'
config[:js_dir] = 'assets/javascripts'
config[:images_dir] = 'assets/images'
config[:fonts_dir] = 'assets/fonts'
config[:partials_dir] = 'shared'


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

  # Enable cache buster
  activate :cache_buster

  # Compress PNGs after build (First: gem install middleman-smusher)
  # require "middleman-smusher"
  # activate :smusher
end
