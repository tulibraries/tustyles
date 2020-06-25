
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tustyles/version"

Gem::Specification.new do |spec|
  spec.name          = "tustyles"
  spec.version       = Tustyles::VERSION
  spec.authors       = ["Chris Doyle"]
  spec.email         = ["cdoyle@temple.edu"]

  spec.summary       = "Styles to be used across TU Library sites"
  spec.description   = "Supplies styles that can be used to get a consistent base look and feel"
  spec.homepage      = "http://library.temple.edu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(app)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry-rails"
end
