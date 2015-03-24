require 'cardamom'

if ENV["TRAVIS"]
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
end

include Cardamom
