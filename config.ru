require 'rubygems'
require 'middleman/rack'

run Middleman.server


# Run your own Rack app here or use this one to serve 404 messages:
# run lambda{ |env|
#   not_found_page = File.expand_path("../build/404.html", __FILE__)
#   if File.exist?(not_found_page)
#     [ 404, { 'Content-Type'  => 'text/html'}, [File.read(not_found_page)] ]
#   else
#     [ 404, { 'Content-Type'  => 'text/html' }, ['404 - page not found'] ]
#   end
# }


# Serve a 404 page if all else fails
# run lambda { |env|
#   [
#     404,
#     {
#       "Content-Type"  => "text/html",
#       "Cache-Control" => "public, max-age=60"
#     },
#     File.open("tmp/404/index.html", File::RDONLY)
#   ]
# }
