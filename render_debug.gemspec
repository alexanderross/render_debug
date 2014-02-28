$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "render_debug/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "render_debug"
  s.version     = RenderDebug::VERSION
  s.authors     = ["alex"]
  s.email       = ["alex@avvo.com"]
  s.homepage    = "http://github.com/alexanderross/render_debug"
  s.summary     = "Additional ActionView render functionality to assist in debugging"
  s.description = "Additional functionality to the ActionView renderer to assist in debugging views."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.0"

  s.add_development_dependency "sqlite3"
end
