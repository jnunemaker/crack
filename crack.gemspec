# frozen_string_literal: true

require File.expand_path('lib/crack/version', __dir__)

Gem::Specification.new do |gem|
  gem.authors       = ['John Nunemaker']
  gem.email         = ['nunemaker@gmail.com']
  gem.description   = 'Really simple JSON and XML parsing, ripped from Merb and Rails.'
  gem.summary       = 'Really simple JSON and XML parsing, ripped from Merb and Rails.'
  gem.homepage      = 'https://github.com/jnunemaker/crack'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files -- lib/* LICENSE README.md History`.split("\n")
  gem.name          = 'crack'
  gem.require_paths = ['lib']
  gem.version       = Crack::VERSION
  gem.license       = 'MIT'

  gem.metadata = {
    'bug_tracker_uri' => 'https://github.com/jnunemaker/crack/issues',
    'changelog_uri' => 'https://github.com/jnunemaker/crack/blob/master/History',
    'source_code_uri' => 'https://github.com/jnunemaker/crack',
    'rubygems_mfa_required' => 'true'
  }

  gem.required_ruby_version = '>= 2.0'

  gem.add_runtime_dependency('bigdecimal')
  gem.add_runtime_dependency('rexml')
end
