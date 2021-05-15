# -*- encoding: utf-8 -*-
# stub: postageapp 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "postageapp".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Scott Tadman".freeze, "Oleg Khabarov".freeze, "The Working Group Inc.".freeze]
  s.date = "2017-09-13"
  s.description = "PostageApp Library for Ruby and Ruby on Rails applications".freeze
  s.email = ["tadman@postageapp.com".freeze, "oleg@khabarov.ca".freeze]
  s.homepage = "http://github.com/postageapp/postageapp-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Client library for PostageApp Email API".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<json>.freeze, [">= 1.8"])
    s.add_runtime_dependency(%q<mail>.freeze, ["~> 2.4"])
  else
    s.add_dependency(%q<json>.freeze, [">= 1.8"])
    s.add_dependency(%q<mail>.freeze, ["~> 2.4"])
  end
end
