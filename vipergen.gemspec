# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'vipergen/version'

Gem::Specification.new do |s|
  s.name        = 'VIPERGen'
  s.version     = VIPERGen::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'Generates XCode VIPER module controllers structure'
  s.email       = 'pedro@redbooth.com'
  s.homepage    = 'http://github.com/teambox/viper-module-generator'
  s.description = 'Based on the objc.io post about VIPER. It saves time in the implementation generating the controllers and adding interactions between them (in Swift or Objective-C)'
  s.authors     = ['Pedro Piñera']
  s.license     = 'MIT'

  # Files
  s.files         = Dir['LICENSE', 'README.md', 'lib/**/*']
  s.test_files    = Dir['tests/**/*.rb']
  s.require_path  = 'lib'

  # Documentation
  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = [
    'README.md'
  ]
  s.add_development_dependency 'bundler', '~> 1.0'
end