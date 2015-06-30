# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/uke/version"

Gem::Specification.new do |gem|
  gem.name          = "uke"
  gem.version       = Uke::VERSION
  gem.summary       = "Displays popular ukulele chords"
  gem.description   = "Displays popular ukulele chords for the popular `GCEA` tuning"
  gem.authors       = ["Jan Lelis"]
  gem.email         = ["mail@janlelis.de"]
  gem.homepage      = "https://github.com/janlelis/uke"
  gem.license       = "MIT"

  gem.files         = Dir["{**/}{.*,*}"].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = "~> 2.0"
  gem.add_dependency 'rationalist', '~> 2.0'
  gem.add_dependency 'artii', '~> 2.1'
end
