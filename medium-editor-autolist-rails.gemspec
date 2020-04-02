# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medium-editor-autolist-rails/version'
Gem::Specification.new do |spec|
  spec.name          = 'medium-editor-autolist-rails'
  spec.version       = MediumEditorAutoList::Rails::VERSION
  spec.authors       = ['Imamul Akhyar']
  spec.email         = ['imamulakhyar93@gmail.com']

  spec.summary       = 'Medium Editor Autolist extensions for rails'
  spec.description   = 'An extension for medium editor which auto creates list. http://varunraj.in/medium-editor-autolist/example/'
  spec.homepage      = 'https://github.com/imamulakhyar93/medium-editor-autolist-rails'
  spec.license       = 'MIT'
  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_development_dependency 'rails', '~> 3.0'
  spec.add_development_dependency 'thor', '~> 0.14'
end
