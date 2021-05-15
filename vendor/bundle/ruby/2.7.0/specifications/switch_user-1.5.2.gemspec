# -*- encoding: utf-8 -*-
# stub: switch_user 1.5.2 ruby lib

Gem::Specification.new do |s|
  s.name = "switch_user".freeze
  s.version = "1.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Richard Huang".freeze, "Luke Cowell".freeze]
  s.date = "2019-03-01"
  s.description = "Easily switch current user to speed up development".freeze
  s.email = ["flyerhzm@gmail.com".freeze]
  s.homepage = "http://rubygems.org/gems/switch_user".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Easily switch current user to speed up development".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<actionpack>.freeze, [">= 0"])
    s.add_development_dependency(%q<activerecord>.freeze, [">= 0"])
    s.add_development_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_development_dependency(%q<awesome_print>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    s.add_development_dependency(%q<railties>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.6"])
    s.add_development_dependency(%q<tzinfo>.freeze, [">= 0"])
  else
    s.add_dependency(%q<actionpack>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<awesome_print>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<railties>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.6"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
  end
end
