# Sinatra Startup

All the boilerplate you need to start coding a simple [Sinatra][1] app.

## Installation

1. Ensure you have ruby 2.1.2 installed
2. Ensure you have the bundler gem installed
3. Run `bundle install`
4. Run `bundle exec rackup`

This will start the server on the default port. Navigate to [http://localhost:9292/] to see the app.

## Configuration

Rackup will set up a couple of rack apps and settings for you. All of it defined
in `config.ru`:

~~~
use Rack::Static, ...
~~~

The `public` folder is mounte as a static site. Everything under `public`
will be available as static content. **Don't** put any ruby code in there, but 
**Do** place static HTML, JavaScript and CSS in there.

~~~
use Rack::Session::Cookie ...
~~~

We enable sessions using cookies. You can remove this if you don't plan on using
sessions.

~~~
require 'lib/users'
map '/users' do
    run MyApp::Users
end
~~~

From here on in you're on your own. This snippet shows how you can load a
Sinatra app called `MyApp::Users` and mount it under the `/users` path.

You can add as many applications as you want, each mapped to it's unique URL.

## Static Content

All of the static content lives under `public` and will be served from the root
URL (`/`). The home page (`index.html`) is simple [Bootstrap][2] boilerplate
using MaxCDN and GoogleAPI's to load the necessary stylesheets and JavaScript.

## Sinatra Apps

The MyApp::Users app might look something like this:

~~~
require 'sinatra/base'
module MyApp
  # Users Application
  class Users < Sinatra::Base
    get '/' do
      # Your code to fetch a list of users here
    end

    get '/self' do
      # Your code to fetch the current user here
    end

    post '/' do
      # Your code to create a new user here
    end

    # And the rest down here
  end
end
~~~

### Testing

[RSpec][3] is included in this setup. Add your specs under `spec`. You can run
[Guard][4] while developing to automatically run tests:

~~~
bundle exec guard
~~~

## Contributing

1. Fork it ( https://github.com/jrgns/sinatra-startup/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

[1]: http://www.sinatrarb.com/
[2]: http://getbootstrap.com/
[3]: http://rspec.info/
[4]: https://github.com/guard/guard
