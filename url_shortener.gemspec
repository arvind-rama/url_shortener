$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "url_shortener/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "url_shortener"
  s.version     = UrlShortener::VERSION
  s.authors     = ["Arvind Ramachandran"]
  s.email       = ["arvind.ramachandran84@gmail.com"]
  s.homepage    = " "
  s.summary     = "url shortener gem"
  s.description = "UrlShortener gem adds url shortener service to your rails app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.16"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "byebug"
end
