require 'rubygems'
require 'middleman/rack'
require 'rack'
require 'rack/contrib/try_static'

# Build the static site when the app boots
`bundle exec middleman build`

# Properly compress the output if the client can handle it.
use Rack::Deflater

# Attempt to serve static HTML files
use Rack::TryStatic,
    :root => 'build',
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']
