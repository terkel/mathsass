# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.10.1"
  s.date = "2017-04-29"

  # Gem Details
  s.name = "MathSass"
  s.rubyforge_project = "MathSass"
  s.summary = %q{Sass mathematical functions.}
  s.description = %q{A Sass implementation of mathematical functions.}
  s.authors = ["Takeru Suzuki"]
  s.email = ["terkeljp@gmail.com"]
  s.homepage = "https://github.com/terkel/mathsass"
  s.license = "MIT"

  # Files to Include
  s.require_paths = ["lib"]

  # README file
  s.files = ["README.md"]

  # CHANGELOG
  # s.files += ["CHANGELOG.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("dist/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  s.add_dependency("sass", [">= 3.2"])
end
