# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refinery/solr/version'

rails_version = ['>= 3.1.11', '< 4.1']

Gem::Specification.new do |spec|
  spec.name          = "refinerycms-solr"
  spec.version       = Refinery::Solr::Version.to_s
  spec.authors       = ["Jeff Chaput"]
  spec.email         = ["jfc@artkeep.net"]
  spec.description   = %q{An extension to handle the integration of Refinery CMS and Solr}
  spec.summary       = %q{Refinery CMS Solr plugin}
  spec.homepage      = "http://open.ixmedia.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency    'refinerycms-core', '~> 3.0.0.dev'
  spec.add_dependency    'sunspot_rails', '~> 2.1.0'
  spec.add_dependency    'sunspot_solr', '~> 2.1.0'
end
