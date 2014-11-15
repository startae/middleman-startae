require 'rubygems'
require 'middleman/rack'
require 'rack'
require 'rack/contrib/try_static'

run Middleman.server

# Properly compress the output if the client can handle it.
use Rack::Deflater

# Attempt to serve static HTML files
use Rack::TryStatic,
    :root => 'build',
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

# 404 if we reached this point. Sad times.
run lambda { |env|
  [
    404,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=60'
    },
    File.open('build/404/index.html', File::RDONLY)
  ]
}
