# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplecov-teamcity-summary/version'

Gem::Specification.new do |gem|
  gem.name          = "simplecov-teamcity-summary"
  gem.version       = SimpleCov::TeamcitySummary::VERSION
  gem.authors       = ["Ben Cochez"]
  gem.email         = ["ben@cochezconsult.be"]
  gem.description   = "Simplecov formatter that prints coverage summary information to display in TeamCity."
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/benc/simplecov-teamcity-summary"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/).reject do |filename|
    filename.match(/^vendor\/cache/) || filename.match(/^doc/) || filename.match(/^.yardoc/)
  end
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_dependency 'simplecov'
end
