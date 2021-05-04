# frozen_string_literal: true

require_relative "lib/gem_ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "gem_ruby"
  spec.version       = GemRuby::VERSION
  spec.authors       = ["Felipe Augusto Rosa"]
  spec.email         = ["flp.far@gmail.com"]

  spec.summary       = "Gem with Algorithms and Challenges solved."
  spec.description   = "This gem was built as an assignment and focuses on the development" \
                       "and practice of topics like Ruby language, testing and management."
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
