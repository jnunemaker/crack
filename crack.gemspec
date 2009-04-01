# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{crack}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Nunemaker"]
  s.date = %q{2009-03-31}
  s.email = %q{nunemaker@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE"]
  s.files = ["README.rdoc", "VERSION.yml", "lib/crack", "lib/crack/core_extensions.rb", "lib/crack/json.rb", "lib/crack/xml.rb", "lib/crack.rb", "test/crack_test.rb", "test/json_test.rb", "test/test_helper.rb", "test/xml_test.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jnunemaker/crack}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Really simple JSON and XML parsing, ripped from Merb and Rails.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
