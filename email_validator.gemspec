Gem::Specification.new do |s|
  s.name = %q{email_validator}
  s.version = "1.5.0.paladin"
  s.authors = ["Brian Alexander", "Ole Morten Amundsen"]
  s.description = %q{An email validator for Rails 3+. This fork homepage at: http://github.com/paladinsoftware/email_validator}
  s.email = "invalidemail"
  s.extra_rdoc_files = [
    "LICENSE",
  ]
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.homepage = %q{https://github.com/paladinsoftware/email_validator}
  s.require_paths = %w(lib)
  s.summary = %q{An email validator for Rails 3+.}

  s.add_dependency("activemodel", ">= 0")

  s.add_development_dependency("rake")
  s.add_development_dependency("rspec", ">= 0")
end

