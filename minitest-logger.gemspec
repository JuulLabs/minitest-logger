Gem::Specification.new do | s|
  s.name = "minitest-logger"
  s.version =  "1.1"
  s.author = "Knut Lickert"
  s.email = "knut@lickert.net"
  #~ s.homepage = "http://ruby.lickert.net/minitest-logger"
  #~ s.homepage = "http://gems.rubypla.net/minitest-logger"
  #~ s.rubyforge_project = 'minitest-logger'
  s.platform = Gem::Platform::RUBY
  #~ s.required_ruby_version = '>= 1.9'
  s.license = 'MIT'
  s.summary = "Extend minitest by assert_log"
  s.description = <<-DESCR
Extend minitest by assert_log and enable minitest to test log messages.
Supports Logger and Log4r::Logger.
  DESCR
  s.require_path = "lib"
  s.files = %w{
    rakefile_minitest-logger.rb
    lib/minitest-logger.rb
    lib/minitest/log4r.rb
    lib/minitest/logger.rb
    examples/example_assertions.rb
    examples/example_specification.rb
  }
  s.test_files    = %w{
    unittest/test_load_minitest-logger.rb
    unittest/test_minitest-logger.rb
    unittest/test_minitest-log4r.rb
  }
  #~ s.test_files   << Dir['unittest/expected/*']
  s.test_files.flatten!

  #~ s.bindir = "bin"
  #~ s.executables << 'minitest-logger.rb'

  s.rdoc_options << '--main lib/minitest-logger.rb'
  s.rdoc_options << '--title "Rdoc: Minitest-logger"'
  s.extra_rdoc_files = %w{
    examples/example_assertions.rb
    examples/example_specification.rb
  }

  #~ s.add_dependency('')
  s.add_dependency('minitest', '>= 0') #tested with "5.5.1" (rb1.9.3 + rb 2.1.5)
  #~ s.add_dependency('log4r')

  #~ s.add_development_dependency()
  s.requirements << 'Log4r or Logger'
end
