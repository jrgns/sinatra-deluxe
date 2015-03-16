require 'rspec/core/rake_task' if ENV['RACK_ENV'] == 'testing'

task default: :spec

desc 'Show help menu'
task :help do
  puts 'Available rake tasks: '
  system 'rake -T'
end

if ENV['RACK_ENV'] == 'testing'
  # Run with `rake spec`
  RSpec::Core::RakeTask.new(:spec) do |task|
    task.rspec_opts = ['--color', '--format', 'documentation']
  end
end
