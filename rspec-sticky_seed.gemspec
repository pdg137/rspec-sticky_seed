# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/sticky_seed/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-sticky_seed'
  spec.version       = RSpec::StickySeed::VERSION
  spec.authors       = ['Paul Grayson']
  spec.email         = ['pdg@alum.mit.edu']
  spec.summary       = %q{Automatically makes rspec stick with a seed that caused failing tests until the tests pass.}
  spec.description   = %q{}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'rspec-mocks'
  spec.add_development_dependency 'fakefs'

  spec.add_runtime_dependency 'rspec', '>= 2.0'
end
