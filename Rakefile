$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'rdoc/task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Expectativas para la clase."
task :spec do
        sh "rspec -I. spec/matriz_spec.rb"
end

desc "Pruebas unitarias de la clase Matriz"
task :test do
        sh "ruby -Ilib test/tc_matrices.rb"
end

Rake::RDocTask.new do |rd|
   rd.main = "README.md"
   rd.rdoc_files.include("README.md", "lib/**/*.rb")
end
