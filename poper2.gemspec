$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'poper2/version'

Gem::Specification.new do |s|
  s.name = 'poper2'
  s.version = Poper2::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = 'Diego Bentes'
  s.email = 'diegopbentes@gmail.com'
  s.homepage = 'https://github.com/diegobentes/poper2'
  s.summary = 'Poper2 makes sure that your git commit messages are well-formed'

  s.required_rubygems_version = '>= 1.3.6'
  s.required_ruby_version = '>= 2.3.0'
  s.license = 'MIT'

  s.files = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = ['lib']
  s.executables << 'poper2'

  s.add_runtime_dependency('rugged', '~> 1.6.3')
  s.add_runtime_dependency('thor', '~> 0.20.0')
  s.add_development_dependency('bundler', '>= 1.10')
  s.add_development_dependency('codeclimate-test-reporter', '~> 1.0')
  s.add_development_dependency('pry', '~> 0.10')
  s.add_development_dependency('rake', '~> 12.0')
  s.add_development_dependency('rspec', '~> 3.4')
  s.add_development_dependency('rspec-its', '~> 1.2')
  s.add_development_dependency('simplecov', '~> 0.14')
end
