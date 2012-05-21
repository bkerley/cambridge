# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cambridge/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bryce Kerley"]
  gem.email         = ["bkerley@brycekerley.net"]
  gem.description   = %q{A stack-based language to demo}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cambridge"
  gem.require_paths = ["lib"]
  gem.version       = Cambridge::VERSION
  gem.required_ruby_version = '~> 1.9.3'

  gem.add_development_dependency 'minitest', '~> 3.0.0'
  gem.add_development_dependency 'guard-minitest'
  gem.add_development_dependency 'guard-ragel'
  gem.add_development_dependency 'shoulda-context', '~> 1.0.0'
  gem.add_development_dependency 'mocha', '~> 0.11.4'
  gem.add_development_dependency 'bundler', '~> 1.1.3'
  gem.add_development_dependency 'rake', '~> 0.9.2'
end
