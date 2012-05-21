#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rake'
require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/test_*.rb'
  test.verbose = true
end

task :default => :test

task :test => :scanner

desc 'Generate the Ragel scanner'
task :scanner => 'lib/cambridge/parser/scan.rb'

file 'lib/cambridge/parser/scan.rb' => ['lib/cambridge/parser/scan.rl'] do |t|
  sh "ragel -R -F1  -o #{t.name} #{t.prerequisites.first}"
end

directory 'doc'

namespace :scanner do
  desc 'Generate a PDF graph of the Ragel scanner'
  task :pdf => 'doc/scan.pdf'
  file 'doc/scan.pdf' => ['doc/scan.dot', 'doc'] do |t|
    sh "dot -Tpdf -o #{t.name} #{t.prerequisites.first}"
  end

  file 'doc/scan.dot' => ['lib/cambridge/parser/scan.rl', 'doc'] do |t|
    sh "ragel -Vp -o #{t.name} #{t.prerequisites.first}"
  end
end
