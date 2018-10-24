# encoding: utf-8
require File.expand_path(File.join('..', 'lib', 'omniauth', 'voicearchive', 'version'), __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'omniauth-voicearchive'
  gem.version     = OmniAuth::VoiceArchive::VERSION
  gem.homepage    = 'https://github.com/voicearchive/omniauth-voicearchive'

  gem.author      = 'Mathias Jakobsen'
  gem.email       = 'mathiasjakobsen@me.com'
  gem.description = 'VoiceArchive OAuth2 strategy for OmniAuth 2.x'
  gem.summary     = gem.description

  gem.add_dependency 'omniauth-oauth2', '< 2.0'

  gem.add_development_dependency 'rake'

  gem.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.require_paths = ['lib']
end
