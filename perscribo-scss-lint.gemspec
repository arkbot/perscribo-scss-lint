# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'perscribo/scss-lint/version'

Gem::Specification.new do |spec|
  spec.name          = 'perscribo-scss-lint'
  spec.version       = Perscribo::SCSSLint::VERSION
  spec.authors       = ['Adam Eberlin']
  spec.email         = ['ae@adameberlin.com']
  spec.summary       = 'Perscribo support for scss-lint.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/arkbot/perscribo-scss-lint'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-cucumber'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-shell'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop', '~> 0.26.1'
  spec.add_development_dependency 'terminal-notifier-guard'

  spec.add_dependency 'colorize'
  spec.add_dependency 'scss-lint', '~> 0.29.0'
  
  spec.add_dependency 'perscribo'
end
