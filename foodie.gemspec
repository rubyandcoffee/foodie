lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "foodie/version"

Gem::Specification.new do |spec|
  spec.name          = "foodie"
  spec.version       = Foodie::VERSION
  spec.authors       = ["Alexandra Wolfe"]
  spec.email         = ["rubyandcoffee@gmail.com"]

  spec.summary       = "A gem for food!"
  spec.description   = "A gem for food!"
  spec.homepage      = "https://github.com/rubyandcoffee/foodie"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/rubyandcoffee/foodie/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "activesupport", ">= 4.2", "< 7.1"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"
end
