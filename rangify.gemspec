# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rangify}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["monocle"]
  s.date = %q{2010-06-29}
  s.description = %q{Combine array elements into ranges.}
  s.email = %q{frappez_2000@yahoo.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/rangify.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/rangify.rb", "spec/rangify_spec.rb", "Manifest", "rangify.gemspec"]
  s.homepage = %q{http://github.com/monocle/rangify}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rangify", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rangify}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Combine array elements into ranges.}
	s.signing_key = '/ruby/keys/rangify/gem-private_key.pem'
  s.cert_chain  = ['/ruby/keys/rangify/gem-public_cert.pem']

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
