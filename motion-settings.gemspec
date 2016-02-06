# -*- encoding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name          = "motion-settings"
  spec.version       = "1.0.0"
  spec.authors       = ["Andrew Havens", "Jamon Holmgren"]
  spec.email         = ["email@andrewhavens.com"]
  spec.description   = %q{A RubyMotion gem to help you easily store and retrieve your user's preferences and settings using NSUserDefaults.}
  spec.summary       = %q{A RubyMotion gem to help you easily store and retrieve your user's preferences and settings using NSUserDefaults.}
  spec.homepage      = "https://github.com/andrewhavens/motion-settings"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
