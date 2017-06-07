# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.authors  = ['Jim Fiorato']
  s.email    = 'hello@theoldreader.com.com'
  s.homepage = 'https://github.com/theoldreader/feedjira-atypon'
  s.license  = 'MIT'
  s.name     = 'feedjira-atypon'
  s.platform = Gem::Platform::RUBY
  s.summary  = 'Atypon RSS format parser for Feedjira'
  s.version  = '0.0.2'

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.required_ruby_version = '>=1.9.3'

  s.add_dependency 'feedjira', '>= 2.1'

  s.add_development_dependency 'danger'
  s.add_development_dependency 'danger-commit_lint'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop', '0.46'
  s.add_development_dependency 'vcr'
end
