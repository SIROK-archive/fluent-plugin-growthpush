# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-growthpush"
  spec.version       = "0.0.1"
  spec.authors       = ["Sota Yamashita"]
  spec.email         = ["sota.yamashita@gmail.com"]
  spec.description   = %q{Growth Push output Fluentd plugin }
  spec.summary       = %q{Growth Push output plugin for Fluentd data collector}
  spec.homepage      = "https://github.com/sota0805/fluent-plugin-growthpush/tree/develop"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"

  spec.add_runtime_dependency "fluentd"
  spec.add_runtime_dependency 'growthpush'
end
