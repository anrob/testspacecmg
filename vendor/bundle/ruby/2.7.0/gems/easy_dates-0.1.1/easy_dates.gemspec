# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{easy_dates}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Oberholzer"]
  s.date = %q{2010-01-08}
  s.description = %q{Easy date formatting for ActiveRecord}
  s.email = %q{ryan@platform45.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/easy_dates.rb", "lib/easy_dates/base.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "easy_dates.gemspec", "init.rb", "lib/easy_dates.rb", "lib/easy_dates/base.rb"]
  s.homepage = %q{http://github.com/platform45/easy_dates}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Easy_dates", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{easy_dates}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Easy date formatting for ActiveRecord}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
