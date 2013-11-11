# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pidgey"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erem J"]
  s.date = "2013-10-22"
  s.description = "Simple Ruby library to talk to Sengrid's Newsletter API"
  s.files = ["CHANGELOG", "lib/pidgey.rb", "lib/pidgey/api.rb", "lib/pidgey/email.rb", "lib/pidgey/list.rb", "lib/pidgey/newsletter.rb", "lib/pidgey/newsletter/schedule.rb", "lib/pidgey/newsletter/recipient.rb", "pidgey.gemspec"]
  s.homepage = "http://github.com/RudthMael/pidgey"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "Simple Ruby library to talk to Sengrid's Newsletter API"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, ["~> 0.12.0"])
    else
      s.add_dependency(%q<httparty>, ["~> 0.12.0"])
    end
  else
    s.add_dependency(%q<httparty>, ["~> 0.12.0"])
  end
end
