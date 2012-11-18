# -*- encoding: utf-8 -*-
require File.expand_path('../lib/source_locator/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Unnikrishnan KP"]
  gem.email         = ["unni.tallman@gmail.com"]
  gem.description   = %q{Source code locater}
  gem.summary       = %q{Source code locater}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "source_locator"
  gem.require_paths = ["lib"]
  gem.version       = SourceLocator::VERSION
end
