# frozen_string_literal: true

require_relative "lib/technical_test_3_desenvolvendo/me/version"

Gem::Specification.new do |spec|
  spec.name = "technical_test_3_desenvolvendo-me"
  spec.version = TechnicalTest3Desenvolvendo::Me::VERSION
  spec.authors = ["Marco Peixoto"]
  spec.email = ["marcoaspeixoto@gmail.com"]

  spec.summary = "Teste Técnico 3 - DesenvolvendoMe"
  spec.description = "Teste Técnico 3 - DesenvolvendoMe"
  spec.homepage = "https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = 'https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me'

  spec.metadata["homepage_uri"] = "https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me"
  spec.metadata["source_code_uri"] = 'https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me'
  spec.metadata["changelog_uri"] = 'https://github.com/marcoaspeixoto/teste-tecnico-3-desenvolvendo-me'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
