v1.0.0
======

Bugfixes:

* [Removed CodeCoverageL, this is calculated by TeamCity](https://confluence.jetbrains.com/pages/viewpage.action?pageId=74845225#HowTo...-ImportcoverageresultsinTeamCity)

v0.1.2
======

Bugfixes:

* Fixed an issue when simplecov is defined with `require: false` inside the Gemfile

v0.1.1
======

Bugfixes:

* Simplecov is actually spelled SimpleCov, the namespace is changed to minimize confusion. Make sure you change your configuration from:

		Simplecov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']

  to:

	    SimpleCov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']

* We're depending on SimpleCov v0.8 or greater.

v0.1
====

Initial release.