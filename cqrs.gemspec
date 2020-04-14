require_relative 'lib/cqrs/version'

Gem::Specification.new do |spec|
  spec.name          = "cqrs"
  spec.version       = CQRS::VERSION
  spec.authors       = ["Anshul Khandelwal"]
  spec.email         = ["anshul@anshul.io"]

  spec.summary       = %q{A functional implementation of cqrs and railway oriented programming.}
  spec.description   = %q{A railway oriented programming pattern alongside command quert responsibility segregation is a userful combination that lends itself to a lot of use cases }
  spec.homepage      = "https://cqrs.difference-engine.ai"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/difference-engine/cqrs"
  spec.metadata["changelog_uri"] = "https://github.com/difference-engine/cqrs/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
