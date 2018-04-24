require 'simplecov'

# Ensure we are using a compatible version of SimpleCov
if Gem::Version.new(SimpleCov::VERSION) < Gem::Version.new("0.8.0")
  raise RuntimeError, 'The version of SimpleCov you are using is too old. Please update with `gem install simplecov` or `bundle update simplecov`'
end

module SimpleCov::Formatter
  class TeamcitySummaryFormatter
    def format(simplecov_results)
      puts format_teamcity(simplecov_results)
    end

    def format_teamcity(simplecov_results)
      <<-eos

##teamcity[blockOpened name='Code Coverage Summary']
##teamcity[buildStatisticValue key='CodeCoverageAbsLCovered' value='#{simplecov_results.covered_lines}']
##teamcity[buildStatisticValue key='CodeCoverageAbsLTotal' value='#{simplecov_results.total_lines}']
##teamcity[blockClosed name='Code Coverage Summary']
      eos
    end
  end
end
