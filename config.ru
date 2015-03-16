# Set up the static site
use Rack::Static, urls: ['/js', '/css'], root: 'public', index: 'index.html'

# Set up sessions using cookies
use Rack::Session::Cookie, secret: 'Apparently you should populate this with something secret'

# Map your API's written as Sinatra Apps to their separte URL's
require './lib/users'
map '/users' do
  run MyApp::Users
end

# Add any other endpoints you might have
# require 'lib/data'
# map '/data' do
#   run MyApp::Data
# end

