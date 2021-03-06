lib = File.expand_path("../lib",__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/slrfhm_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "slrfhm_palindrome"
  spec.version       = SlrfhmPalindrome::VERSION
  spec.authors       = ["sfahim-amphealth"]
  spec.email         = ["sfahim@adaptivemedicalpartners.com"]

  spec.summary       = %q{Palindrome detector}
  spec.description   = %q{Learn Enough Ruby palindrome detector}
  spec.homepage      = "https://github.com/sfahim-amphealth/palindrome_gem"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes"
  end
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sfahim-amphealth/palindrome_gem"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
