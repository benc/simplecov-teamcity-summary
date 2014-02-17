SimpleCov.profiles.define 'teamcity' do
  at_exit do
    SimpleCov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']
  end
end