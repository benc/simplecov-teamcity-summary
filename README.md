# Simplecov::TeamcitySummary

SimpleCov formatter to present coverage results to TeamCity.

![See your coverage results in TeamCity](https://raw.github.com/benc/simplecov-teamcity-summary/master/img/coverage_results.png)

## Installation

Add this line to your application's Gemfile:

    gem 'simplecov-teamcity-summary'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplecov-teamcity-summary

## Configuration

### When starting Simplecov

```ruby
  require 'simplecov'
  SimpleCov.start do
    at_exit do
      Simplecov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']
    end
  end
```

### Using a Simplecov profile

Create or edit a .simplecov file and include:

```ruby
  SimpleCov.profiles.define 'teamcity' do
    at_exit do
      Simplecov::Formatter::TeamcitySummaryFormatter.new.format(SimpleCov.result) if ENV['TEAMCITY_VERSION']
    end
  end
```

Then, start your Simplecov instance like this:

```ruby
  require 'simplecov'
  SimpleCov.start 'teamcity'
```

## License

This is free software, and may be redistributed under the terms of MIT license.