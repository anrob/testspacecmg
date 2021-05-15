# -*- encoding: utf-8 -*-
# stub: stream_rails 2.6.6 ruby lib

Gem::Specification.new do |s|
  s.name = "stream_rails".freeze
  s.version = "2.6.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tommaso Barbugli".freeze, "Ian Douglas".freeze, "Federico Ruggi".freeze]
  s.date = "2019-03-18"
  s.email = "support@getstream.io".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/GetStream/stream-rails".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A gem that provides a client interface for getstream.io".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_runtime_dependency(%q<stream-ruby>.freeze, ["~> 3.1"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.13"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
    s.add_development_dependency(%q<sequel>.freeze, ["~> 4.49"])
  else
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<railties>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<stream-ruby>.freeze, ["~> 3.1"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.13"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.16.1"])
    s.add_dependency(%q<sequel>.freeze, ["~> 4.49"])
  end
end
