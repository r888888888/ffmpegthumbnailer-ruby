# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ffmpegthumbnailer-ruby/version"

Gem::Specification.new do |s|
  s.name        = "ffmpegthumbnailer-ruby"
  s.version     = Ffmpegthumbnailer::Ruby::VERSION
  s.authors     = ["r888888888"]
  s.email       = ["r888888888@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby wrapper for the ffmpegthumbnailer library}
  s.description = %q{Ruby wrapper for the ffmpegthumbnailer library}

  s.rubyforge_project = "ffmpegthumbnailer-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extensions    = ["ext/extconf.rb"]
end
