# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "Performable/version"

Gem::Specification.new do |s|
  s.name        = "Performable"
  s.version     = Performable::VERSION
  s.authors     = ["thredUP"]
  s.email       = ["kylie@thredup.com"]
  s.homepage    = ""
  s.summary     = %q{This gem records Performable Lifecycle Analytics events.}
  s.description = %q{Supply an event name, Performable API key, and any other additional custom event parameters to record events on Performable.}

  s.rubyforge_project = "Performable"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
