# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'global/configuration/writable/version'

Gem::Specification.new do |spec|
  spec.name          = "global-configuration-writable"
  spec.version       = Global::Configuration::Writable::VERSION
  spec.authors       = ["Keiichiro Nagano"]
  spec.email         = ["knagano@CPAN.org"]
  spec.summary       = %q{Make global's configuration writable}
  spec.description   = %q{Make global's configuration writable}
  spec.homepage      = "https://github.com/knagano/global-configuration-writable"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'global', '~> 0.1.1'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '>= 2.13.0'
end
