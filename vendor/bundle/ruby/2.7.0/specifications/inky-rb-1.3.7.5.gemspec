# -*- encoding: utf-8 -*-
# stub: inky-rb 1.3.7.5 ruby lib

Gem::Specification.new do |s|
  s.name = "inky-rb".freeze
  s.version = "1.3.7.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ZURB".freeze]
  s.date = "2019-03-29"
  s.description = "Inky is an HTML-based templating language that converts simple HTML into complex, responsive email-ready HTML. Designed for Foundation for Emails, a responsive email framework from ZURB.  ".freeze
  s.email = ["foundation@zurb.com".freeze]
  s.homepage = "https://github.com/zurb/inky-rb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Inky is an HTML-based templating language that converts simple HTML into complex, responsive email-ready HTML. Designed for Foundation for Emails, a responsive email framework from ZURB.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<foundation_emails>.freeze, ["~> 2"])
    s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<slim>.freeze, [">= 0"])
  else
    s.add_dependency(%q<foundation_emails>.freeze, ["~> 2"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<slim>.freeze, [">= 0"])
  end
end
