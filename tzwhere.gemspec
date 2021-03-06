# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tzwhere/version'

Gem::Specification.new do |spec|
  spec.name          = "tzwhere"
  spec.version       = TZWhere::VERSION
  spec.authors       = ["Adam Daniels"]
  spec.email         = ["adam@mediadrive.ca"]
  spec.summary       = %q{Time zone lookup by latitude/longitude using nearest neighbor implementation.}
  spec.homepage      = "http://github.com/adam12/tzwhere"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "kdtree"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
