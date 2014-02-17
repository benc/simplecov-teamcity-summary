module Simplecov::Formatter
  class TeamcitySummaryFormatter
    def format(simplecov_results)
      puts format_teamcity(simplecov_results)
    end

    def format_teamcity(simplecov_results)
      <<-eos

##teamcity[blockOpened name='Code Coverage Summary']
##teamcity[buildStatisticValue key='CodeCoverageL' value='#{simplecov_results.covered_percent}']
##teamcity[buildStatisticValue key='CodeCoverageAbsLCovered' value='#{simplecov_results.covered_lines}']
##teamcity[buildStatisticValue key='CodeCoverageAbsLTotal' value='#{simplecov_results.total_lines}']
##teamcity[blockClosed name='Code Coverage Summary']
      eos
    end
  end
end