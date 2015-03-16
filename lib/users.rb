require 'sinatra/base'

module MyApp
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
