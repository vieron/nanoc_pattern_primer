Gem::Specification.new do |s|
  s.name = %q{pattern_primer}
  s.version = "0.0.1"
  s.date = %q{2011-09-29}
  s.summary            = %q{pattern_primer is the best}
  s.authors            = ['Javier Sánchez-Marín']
  s.email              = 'javiersanchezmarin@gmail.com'
  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,tasks,nanoc}/**/*'] +
                         [ 'pattern_primer.gemspec']
  s.require_paths = ["lib"]
end