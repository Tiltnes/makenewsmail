# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "makenewsmail/version"

Gem::Specification.new do |s|
  s.name        = "makenewsmail"
  s.version     = Makenewsmail::VERSION
  s.authors     = ["Torbjørn Tiltnes"]
  s.email       = ["torbjorn.tiltnes@gmail.com"]
  s.homepage    = "https://github.com/tiltnes/makenewsmail"
  s.summary     = %q{Make Newsmail API}
  s.description = %q{Wrapper for Make Newsmail API}

  s.rubyforge_project = "makenewsmail"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
