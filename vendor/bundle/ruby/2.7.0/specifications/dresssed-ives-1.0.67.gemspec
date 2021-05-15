# -*- encoding: utf-8 -*-
# stub: dresssed-ives 1.0.67 ruby lib

Gem::Specification.new do |s|
  s.name = "dresssed-ives".freeze
  s.version = "1.0.67"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dresssed".freeze]
  s.date = "2019-08-23"
  s.description = "Dresssed Ives theme".freeze
  s.email = ["support@dresssed.com".freeze]
  s.homepage = "http://dresssed.com/themes/ives".freeze
  s.post_install_message = "    All done!\n\n    Any questions? Email john@dresssed.com\n\n    Need help? Check out the FAQ first: https://dresssed.com/faq\n\n    Still need help? Go to your order receipt page and send me the information\n    requested on the right hand side and send to john@dresssed.com.\n\n".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Dresssed Ives theme".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.1"])
    s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<version_bumper>.freeze, [">= 0"])
    s.add_development_dependency(%q<aws-sdk>.freeze, [">= 0"])
    s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<version_bumper>.freeze, [">= 0"])
    s.add_dependency(%q<aws-sdk>.freeze, [">= 0"])
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
  end
end
