Gem::Specification.new do |s|
  s.name        = "cardamom"
  s.version     = "0.1.0"
  s.summary     = "Cardamom: Spice up your Cuba app!"
  s.description = "Ruby helpers for Cuba apps"
  s.authors     = ["matiasow"]
  s.email       = ["matiasow@gmail.com"]
  s.homepage    = "http://github.com/matiasow/cardamom"
  s.license     = 'MIT'

  s.files       =  `git ls-files`.split("\n")

  s.add_dependency "cuba", '~> 3.0', '>= 3.0.0'
  s.add_dependency "multi_json", '~> 1.11', '>= 1.11.0'
  s.add_dependency "unicode_utils", '~> 1.4', '>= 1.4.0'

  s.add_development_dependency "cutest", '~> 0'
end
