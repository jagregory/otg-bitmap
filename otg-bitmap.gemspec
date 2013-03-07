# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitmap'

Gem::Specification.new do |gem|
  gem.name          = 'otg-bitmap'
  gem.version       = Bitmap::VERSION
  gem.authors       = ['James Gregory', 'On the Game']
  gem.email         = ['james@onthegame.com.au']
  gem.description   = 'Dead simple Ruby Bitmap implementation, used for flags etc...'
  gem.summary       = 'Bitmap/bitset Ruby implementation'
  gem.homepage      = 'http://www.onthegame.com.au/about/opensource'

  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
