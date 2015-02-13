# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'launchcop/version'

Gem::Specification.new do |spec|
  spec.name          = "launchcop"
  spec.version       = Launchcop::VERSION
  spec.authors       = ["Eric Kelly"]
  spec.email         = ["heroiceric@gmail.com"]
  spec.summary       = %q{Rubocop with custom config.}
  spec.description   = %q{Rubocop configured to easily follow our style guide.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency("rubocop")
end
