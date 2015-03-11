require 'rspec/core/rake_task'
require 'bundler/gem_tasks'

task default: :spec

desc 'Show help menu'
task :help do
  puts 'Available rake tasks: '
  system 'rake -T'
end

# Run with `rake spec`
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'documentation']
end
