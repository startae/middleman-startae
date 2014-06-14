# View Middleman configurations:
# http://localhost:4567/__middleman/config/


# Site Settings
# ----------------------------------------------
@analytics_account = false


# Slim HTML
# ----------------------------------------------
set :slim, {
  :format  => :html5,
  :tabsize => 2,
  :sort_attrs => false
}
::Slim::Engine.set_default_options lang: I18n.locale, locals: {}


# i18n
# ----------------------------------------------
activate :i18n, :mount_at_root => :'pt-BR'


# Livereload
# ----------------------------------------------
activate :livereload


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
config[:partials_dir] = 'shared'


# Other configurations
# ----------------------------------------------
activate :directory_indexes
set :trailing_slash, false
activate :automatic_alt_tags



# Development-specific configuration
# ----------------------------------------------
configure :development do
  activate :directory_indexes
  activate :debug_assets
  set :slim, {
    :pretty => true
  }
end


# Build-specific configuration
# ----------------------------------------------
configure :build do
  ignore "/bower_components/*"

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
