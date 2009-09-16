# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{remix-stash}
  s.version = "0.9.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brian Mitchell"]
  s.date = %q{2009-09-16}
  s.email = %q{binary42@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "benchmarks/get_set.rb",
     "benchmarks/payload.rb",
     "examples/eval.rb",
     "examples/gate.rb",
     "examples/getset.rb",
     "examples/scope.rb",
     "examples/stash.rb",
     "harness.rb",
     "lib/remix/stash.rb",
     "lib/remix/stash/cluster.rb",
     "lib/remix/stash/extension.rb",
     "lib/remix/stash/protocol.rb",
     "remix-stash.gemspec",
     "spec/extension_spec.rb",
     "spec/spec.rb",
     "spec/stash_spec.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/binary42/remix-stash}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Remix your memcache}
  s.test_files = [
    "spec/extension_spec.rb",
     "spec/spec.rb",
     "spec/stash_spec.rb",
     "test/cluster_stress.rb",
     "test/connection_stress.rb",
     "test/memcached_runner.rb",
     "examples/eval.rb",
     "examples/gate.rb",
     "examples/getset.rb",
     "examples/scope.rb",
     "examples/stash.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
