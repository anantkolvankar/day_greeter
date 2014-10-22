# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'day_greeter/version'

Gem::Specification.new do |spec|
  spec.name          = "day_greeter"
  spec.version       = DayGreeter::VERSION
  spec.authors       = ["anant"]
  spec.email         = ["ani.kolvankar@gmail.com"]
  spec.description   = %q{This gem allows you to greet your user}
  spec.summary       = %q{This gem allows you to say hello and will be saying good morning, afternoon, evening based on current time}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + Dir["app/**/*"] + ["Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["{lib,app}/**/*"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
