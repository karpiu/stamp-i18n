# -*- encoding: utf-8 -*-
require File.expand_path('../lib/stamp-i18n/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michal Karpinski"]
  gem.email         = ["karp0506@gmail.com"]
  gem.description   = %q{Little plugin for 'stamp' gem. It uses I18n locale files to customize date and time stamps.}
  gem.summary       = %q{Fork of stamp gem. Modified for I18n use}
  gem.homepage      = "https://github.com/karpiu/stamp-i18n"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "stamp-i18n"
  gem.require_paths = ["lib"]
  gem.version       = StampI18n::VERSION
  
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "stamp"
  gem.add_development_dependency "i18n"
end
