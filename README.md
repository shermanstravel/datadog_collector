# DatadogCollector

Harness Collector Wrapper for dogstatsd-ruby Gem.

## Installation

Add this line to your application's Gemfile:

    gem 'datadog_collector', :git => 'git@github.com:shermanstravel/datadog_collector.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install datadog_collector

## Usage

```ruby

require 'harness'
Harness.config.collector = DatadogCollector::Collector.new({ tags: ['test'] })
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
