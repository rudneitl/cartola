# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cartola/version'

Gem::Specification.new do |spec|
  spec.name          = "cartola"
  spec.version       = Cartola::VERSION
  spec.authors       = ["Rudnei Lucas"]
  spec.email         = ["rudnei@rudneilucas.com"]

  spec.summary       = %q{Cartola FC}
  spec.description   = %q{Cartola FC}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", "~> 1.8.0"
  spec.add_dependency "rest_model", "~> 0.3.1"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
