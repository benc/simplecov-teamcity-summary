# Simplecov::TeamcitySummary

By default, Teamcity [does not pick up coverage information for Simplecov reports](http://confluence.jetbrains.com/display/TCD8/Code+Coverage). This gem provides you with a quick and easy way to add these statistics to your Teamcity instance.

Per build:

![See your coverage results in TeamCity](https://raw.github.com/benc/simplecov-teamcity-summary/master/img/coverage_results.png)

Overall coverage statistics:

![Get overall coverage statistics](https://raw.github.com/benc/simplecov-teamcity-summary/master/img/coverage_chart.png)

With these statistics, you can trigger a build fail if coverage drops below a certain value:

![Trigger build failure](https://raw.github.com/benc/simplecov-teamcity-summary/master/img/trigger_build_failure.png)

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

Copyright (C) 2014 Ben Cochez

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.