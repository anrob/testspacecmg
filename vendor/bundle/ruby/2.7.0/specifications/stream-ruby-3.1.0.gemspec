# -*- encoding: utf-8 -*-
# stub: stream-ruby 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "stream-ruby".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tommaso Barbugli".freeze, "Ian Douglas".freeze, "Federico Ruggi".freeze]
  s.date = "2019-01-23"
  s.description = "Ruby client for getstream.io service".freeze
  s.email = "support@getstream.io".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/GetStream/stream-ruby".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A gem that provides a client interface for getstream.io".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 0.10.0", "< 1.0"])
    s.add_runtime_dependency(%q<jwt>.freeze, [">= 2.1.0", "~> 2.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.10"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.7"])
  else
    s.add_dependency(%q<faraday>.freeze, [">= 0.10.0", "< 1.0"])
    s.add_dependency(%q<jwt>.freeze, [">= 2.1.0", "~> 2.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.10"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.7"])
  end
end
