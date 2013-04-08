# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adder/version'

Gem::Specification.new do |spec|
  spec.name          = 'adder'
  spec.version       = Adder::VERSION
  spec.authors       = ['Sam Soffes']
  spec.email         = ['sam@soff.es']
  spec.description   = 'Adds two number'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/soffes/adder'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
