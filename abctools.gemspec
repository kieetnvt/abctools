# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'abctools/version'

Gem::Specification.new do |spec|
  spec.name          = "abctools"
  spec.version       = Version::VERSION
  spec.authors       = ["Kiet Nguyen"]
  spec.email         = ["kietnvt.it@gmail.com"]
  spec.summary       = %q{Collection some utilities for rubyer}
  spec.description   = %q{Collection some utilities for rubyer}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
