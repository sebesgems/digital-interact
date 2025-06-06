# frozen_string_literal: true

require_relative 'lib/digital_interact/version'

Gem::Specification.new do |spec|
  spec.name = 'digital_interact'
  spec.version = DigitalInteract::VERSION
  spec.authors = ['Sebes Technology ltd']

  spec.summary = 'Allows to interact with Digital Ocean'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile digital_interact-])
    end
  end
  spec.bindir      = 'exe'

  spec.executables = 'digital'
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
