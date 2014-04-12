# View Middleman configurations:
# http://localhost:4567/__middleman/config/


# Site Settings
# ----------------------------------------------
@analytics_account = false


# Slim HTML
# ----------------------------------------------
Slim::Engine.set_default_options pretty: true, sort_attrs: false, format: :html5, tabsize: 2


# Compass configuration
compass_config do |config|
  config.output_style = :expanded
  config.preferred_syntax = :sass
end


# i18n
# ----------------------------------------------
activate :i18n, :mount_at_root => :'pt-BR'


# Livereload
# ----------------------------------------------
set :livereload, true


# Page options, layouts, aliases and proxies
# ----------------------------------------------


# Helpers
# ----------------------------------------------
helpers do

  # gzip css
  def gzip_css_on_build(key)
    o = stylesheet_link_tag(key)
    o.sub!(".css", ".css.gz") if build?
    o
  end

  # gzip js
  def gzip_js_on_build(key)
    o = javascript_include_tag(key)
    o.sub!(".js", ".js.gz") if build?
    o
  end

  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '-' + end_year.to_s
    end
  end

  def current_year
    Time.now.year
  end

  # FAKER HELPERS
  def random_name
    Faker::Name.name
  end

  def random_address
    "#{Faker::Address.street_address},<br/>#{Faker::Address.city}, #{Faker::Address.state}<br/>#{Faker::Address.postcode}"
  end

  def random_company_name
    Faker::Company.name
  end

  def random_phone_number
    Faker::PhoneNumber.phone_number
  end

  def random_email_address
    Faker::Internet.email
  end

end


# Bower Config
# ----------------------------------------------
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end


# Configure assets directories
# ----------------------------------------------
config[:css_dir] = 'assets/stylesheets'
config[:js_dir] = 'assets/javascripts'
config[:images_dir] = 'assets/images'
config[:fonts_dir] = 'assets/fonts'
config[:partials_dir] = 'partials'


# Other configurations
# ----------------------------------------------
set :automatic_image_sizes, false
set :automatic_alt_tags, true
set :directory_indexes, true


# Development-specific configuration
# ----------------------------------------------
configure :development do
  set :directory_indexes, true
  set :debug_assets, true
end


# Build-specific configuration
# ----------------------------------------------
configure :build do

  # Use relative URLs
  set :directory_indexes, true

  # Activate gzip
  set :gzip, true

  # Minify CSS on build
  set :minify_css, true

  # Minify Javascript on build
  set :minify_javascript, true

  # Add asset fingerprinting to avoid cache issues
  set :asset_hash, true

  # Enable cache buster
  set :cache_buster, true

  # Compress PNGs after build (First: gem install middleman-smusher)
  # require "middleman-smusher"
  # set :smusher, true
end
