# frozen_string_literal: true

require_relative "lib/esbuild/version"

Gem::Specification.new do |spec|
  spec.name = "esbuild"
  spec.version = Esbuild::VERSION
  spec.authors = ["Bouke van der Bijl"]
  spec.email = ["i@bou.ke"]

  spec.summary = "Use esbuild from Ruby"
  spec.homepage = "https://github.com/bouk/esbuild-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["Rakefile"]
  spec.add_dependency "concurrent-ruby", "~> 1.1.8"
  # spec.add_development_dependency "minitest", "~> 5.14.4"
  # spec.add_development_dependency "standard", "~> 1.0.4"
  spec.add_dependency "rake", "~> 13.0"
end
