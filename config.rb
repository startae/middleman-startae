# View Middleman configurations:
# http://localhost:4567/__middleman/config/

# Site Settings
# ----------------------------------------------
@google_analytics = "UA-XXXXXXX-X"

# Slim HTML
# ----------------------------------------------
::Slim::Engine.set_options :format  => :html

# i18n
# ----------------------------------------------
activate :i18n, :mount_at_root => :'en'

# Livereload
# ----------------------------------------------
configure :development do
  activate :livereload, :no_swf => true
end

# Webpack
# ----------------------------------------------
activate :external_pipeline,
  name: :webpack,
  command: build? ?
  "./node_modules/webpack/bin/webpack.js --bail -p" :
  "./node_modules/webpack/bin/webpack.js --watch -d --progress --color",
  source: ".tmp/dist",
  latency: 1

# Configure assets directories
# ----------------------------------------------
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'
set :fonts_dir, 'assets/fonts'

# Other configurations
# ----------------------------------------------
set :trailing_slash, false

# Sitemap
# ----------------------------------------------
page "/sitemap.xml", :layout => false

# Development-specific configuration
# ----------------------------------------------
configure :development do
  activate :directory_indexes

  set :debug_assets, true

  # Output a pretty html
  ::Slim::Engine.set_options :pretty => true

  # Activate autoprefixer
  activate :autoprefixer
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

  # Activate autoprefixer
  activate :autoprefixer
end
