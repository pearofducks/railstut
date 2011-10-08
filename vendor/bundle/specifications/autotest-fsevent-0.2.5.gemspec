# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "autotest-fsevent"
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sven Schwyn"]
  s.date = "2011-03-02"
  s.description = "Autotest relies on filesystem polling to detect modifications in source code files. This is expensive for the CPU, harddrive and battery - and unnecesary on Mac OS X 10.5 or higher which comes with the very efficient FSEvent core service for this very purpose. This gem teaches autotest how to use FSEvent."
  s.email = ["ruby@bitcetera.com"]
  s.extensions = ["ext/fsevent/extconf.rb"]
  s.files = ["ext/fsevent/extconf.rb"]
  s.homepage = "http://www.bitcetera.com/products/autotest-fsevent"
  s.post_install_message = "\e[1;32m\n-------------------------------------------------------------------------------\n\nIn order to use autotest-fsevent, install either the comprehensive \nZenTest gem or the lightweight autotest-standalone gem and then add the \nfollowing line to your ~/.autotest file:\n\nrequire 'autotest/fsevent'\n\nFor more information, feedback and bug submissions, please visit:\n\nhttp://www.bitcetera.com/products/autotest-fsevent\n\nIf you like this gem, please consider to recommend me on Working with\nRails, thank you!\n\nhttp://workingwithrails.com/recommendation/new/person/11706-sven-schwyn\n\n-------------------------------------------------------------------------------\n\e[0m"
  s.require_paths = ["lib"]
  s.rubyforge_project = "autotest-fsevent"
  s.rubygems_version = "1.8.10"
  s.summary = "Use FSEvent (on Mac OS X 10.5 or higher) instead of filesystem polling."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sys-uname>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<ZenTest>, [">= 0"])
    else
      s.add_dependency(%q<sys-uname>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<ZenTest>, [">= 0"])
    end
  else
    s.add_dependency(%q<sys-uname>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<ZenTest>, [">= 0"])
  end
end
