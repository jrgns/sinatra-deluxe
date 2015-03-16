workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
root = "#{Dir.getwd}"

preload_app!

threads threads_count, threads_count
rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'
pidfile     "#{root}/tmp/puma.pid"
state_path  "#{root}/tmp/puma.state"
