# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'QuoteRoller/version'

Gem::Specification.new do |spec|
  spec.name          = "QuoteRoller"
  spec.version       = QuoteRoller::VERSION
  spec.authors       = ["Stefan Streichsbier"]
  spec.email         = ["stefan@streichsbier.at"]
  spec.description   = "QuoteRoller API client"
  spec.summary       = "Rudimentary QuoteRoller API client"
  spec.homepage      = "http://vantage-point.asia"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'activeresource'
end
