v0.1.1
======

Bugfixes:

* Simplecov is actually spelled SimpleCov, the namespace is changed to minimize confusion. Make sure you change your configuration from

        SimpleCov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']
  
  to
  
        SimpleCov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']
        
* We're depending on SimpleCov v0.8 or greater.

v0.1
====

Initial release.