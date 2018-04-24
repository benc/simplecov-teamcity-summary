require 'simplecov'
SimpleCov.start 'teamcity'

require 'simplecov-teamcity-summary'
require 'pry'

support_path = File.expand_path("spec/support")
Dir["#{support_path}/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.tty = true
end