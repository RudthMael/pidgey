Gem::Specification.new do |s|
  s.name = "pidgey"
  s.version = "0.0.1"
  s.authors = ["Erem J"]
  s.date = "2013-10-22"
  s.description = "Simple Ruby library to talk to Sengrid's Newletter API"
  s.homepage = "http://github.com/RudthMael/pidgey"

  s.files = [
    "LICENSE",
    "README.textile",
    "Rakefile",
    "VERSION",
    "CHANGELOG",
    "lib/pidgey.rb",
    "lib/pidget/api.rb",
    "lib/pidgey/email.rb",
    "lib/pidgey/list.rb",
    "pidgey.gemspec"
  ]

  s.require_paths = ["lib"]
  s.summary = "Simple Ruby library to talk to Sengrid's Newletter API"

  s.add_runtime_dependency "httparty",
    ["~> 0.12.0"]
