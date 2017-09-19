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
  command: build? ?  "yarn run build" : "yarn run start",
  source: ".tmp/dist",
  latency: 1

# Configure assets directories
# ----------------------------------------------
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
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
end

# Build-specific configuration
# ----------------------------------------------
configure :build do
  # Use relative URLs
  activate :directory_indexes

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash
end
