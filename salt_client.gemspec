# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'salt_client/version'

Gem::Specification.new do |spec|
  spec.name          = "salt_client"
  spec.version       = SaltClient::VERSION
  spec.authors       = ["Alex Bularca"]
  spec.email         = ["abu@everymatrix.com"]

  spec.summary       = %q{Simple CLI client for interacting with the SaltStack remote API}
  spec.description   = %q{A CLI client for the SaltStack API that allows you to remotely execute code on your SaltStack minions}
  spec.homepage      = "https://github.com/arcade/salt_client"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_dependency "unirest", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
