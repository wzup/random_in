$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "random_in/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "random_in"
  s.version     = RandomIn::VERSION
  s.authors     = ["Wzup"]
  s.email       = ["londonein@gmain.com"]
  s.homepage    = "https://github.com/wzup/random_in"
  s.summary     = "A generator of a set of random numbers. Implemented as a built-in Integer class' method."
  s.description = "A generator of random numbers. Implemented as a built-in Integer class' method. Generates an array of specified quantity of random numbers. Generated numbers may repeat or may not repeat - it is configurable. You can set a range of numbers from which to generate by defining the beggining and the end of the range. Ruby's Random class is used as generator. Tested."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 3.2.13"
end
