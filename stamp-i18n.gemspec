# -*- encoding: utf-8 -*-
require File.expand_path('../lib/stamp-i18n/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michal Karpinski"]
  gem.email         = ["karp0506@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "stamp-i18n"
  gem.require_paths = ["lib"]
  gem.version       = Stamp::I18n::VERSION
end
