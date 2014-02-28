# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'datadog_collector/version'

Gem::Specification.new do |spec|
  spec.name          = 'datadog_collector'
  spec.version       = DatadogCollector::VERSION
  spec.authors       = ['Shermans Travel Media Inc']
  spec.email         = ['engineering@shermanstravelmedia.com']
  spec.homepage      = ['http://www.shermanstravel.com']
  spec.description   = ['Harness Collector Wrapper for dogstatsd-ruby Gem.']
  spec.summary       = ['Harness Collector Wrapper for dogstatsd-ruby Gem.']
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'dogstatsd-ruby'
  spec.add_development_dependency 'rake'
end
